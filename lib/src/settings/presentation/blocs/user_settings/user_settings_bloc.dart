import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../../core/failures/failures.dart';
import '../../../../../core/injection/init_di.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/services/global_settings_sevice.dart';
import '../../../../../core/src/domain/entities/no_params.dart';
import '../../../domain/entities/user_settings.dart';
import '../../../domain/usecases/get_user_settings_usecase.dart';
import '../../../domain/usecases/save_user_settings_usecase.dart';

part 'user_settings_event.dart';
part 'user_settings_state.dart';

class UserSettingsBloc extends Bloc<UserSettingsEvent, UserSettingsState> {
  final GetUserSettingsUseCase getUserSettings;
  final SaveUserSettingsUseCase saveUserSettings;

  UserSettingsBloc({
    required this.getUserSettings,
    required this.saveUserSettings,
  }) : super(UserSettingsInitial()) {
    on<LoadUserSettings>((event, emit) async {
      log('LoadUserSettings event added');
      // emit(UserSettingsLoading());
      Either<Failure, UserSettings> userSettingsOrError = await getUserSettings(
        params: NoParams(),
      );
      userSettingsOrError.fold(
        (Failure failure) {
          log('UserSettingsError state emitted: ${failure.message}');
          emit(
            UserSettingsError(
              message: failure.message,
              code: failure.code,
              onRetry: () {
                add(const LoadUserSettings());
              },
            ),
          );
        },
        (UserSettings userSettings) {
          emit(
            UserSettingsLoaded(
              userSettings: userSettings,
              status: UserSettingsLoadedStatus.initial,
            ),
          );
          sl<GlobalSettingsService>().updateUserSettings(
            newUserSettings: userSettings,
          );
        },
      );
    });
    on<UpdateAndSaveUserSettings>((event, emit) async {
      if (state is UserSettingsLoaded) {
        UserSettingsLoaded userSettingsLoaded = state as UserSettingsLoaded;
        emit(
          userSettingsLoaded.copyWith(
            status: UserSettingsLoadedStatus.inProgress,
          ),
        );
        Either<Failure, Unit> savedOrError = await saveUserSettings(
          params: event.userSettings,
        );
        savedOrError.fold(
          (failure) {
            log(
              'UserSettingsLoadedStatus.error state emitted: ${failure.message}',
            );
            userSettingsLoaded = state as UserSettingsLoaded;
            emit(
              userSettingsLoaded.copyWith(
                status: UserSettingsLoadedStatus.error,
                message: failure.message,
                userSettings: event.userSettings,
              ),
            );
            sl<GlobalSettingsService>().updateUserSettings(
              newUserSettings: event.userSettings,
            );
          },
          (unit) {
            log('UserSettingsLoadedStatus.success state emitted');
            userSettingsLoaded = state as UserSettingsLoaded;
            emit(
              userSettingsLoaded.copyWith(
                status: UserSettingsLoadedStatus.success,
                message: Tr.current.settingsUpdatedSuccessfully,
                userSettings: event.userSettings,
              ),
            );
            sl<GlobalSettingsService>().updateUserSettings(
              newUserSettings: event.userSettings,
            );
          },
        );
      }
    });
  }
}
