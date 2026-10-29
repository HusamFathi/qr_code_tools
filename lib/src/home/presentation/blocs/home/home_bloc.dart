import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/home_constants.dart';
import '../../../domain/usecases/get_home_constants_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeConstantsUseCase getHomeConstants;

  HomeConstants getConstants({required BuildContext context}) =>
      getHomeConstants(params: GetHomeConstantsUseCaseParams(context: context));

  HomeBloc({required this.getHomeConstants}) : super(HomeInitial()) {
    on<HomeInit>((event, emit) async {
      emit(const LoadedState());
      // emit(
      //   LoadingState(),
      // );
      // Either<Failure, bool> validationOrError = await validateUserProfile(
      //   params: NoParams(),
      // );

      // validationOrError.fold((failure) {
      //   if (failure is SessionExpiredFailure) {
      //     //! the user has not et profile yet

      //     return add(HandleSessionExpiredEvent());
      //   }
      //   emit(ErrorState(
      //     code: failure.code,
      //     error: failure.message,
      //     onPressed: () {
      //       add(HomeInitEvent());
      //     },
      //   ));
      // }, (bool isValidProfile) {
      //   if (!isValidProfile) {
      //     emit(AllowUserToCreateProfileState());
      //     return;
      //   } else {
      //     emit(
      //       const LoadedState(
      //         index: 0,
      //       ),
      //     );
      //   }
      // });
    });
  }
}
