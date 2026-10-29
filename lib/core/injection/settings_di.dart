import '../../src/settings/data/datasources/local/settings_local_data_source.dart';
import '../../src/settings/data/mappers/settings_mapper.dart';
import '../../src/settings/data/repositories/settings_repository_impl.dart';
import '../../src/settings/domain/repositories/settings_repository.dart';
import '../../src/settings/domain/usecases/get_user_settings_usecase.dart';
import '../../src/settings/domain/usecases/save_user_settings_usecase.dart';
import '../../src/settings/presentation/blocs/user_settings/user_settings_bloc.dart';
import 'init_di.dart' show sl;

void settingsDi() {
  ///user settings bloc
  sl.registerFactory<UserSettingsBloc>(
    () => UserSettingsBloc(getUserSettings: sl(), saveUserSettings: sl()),
  );

  ///* usecase for save user settings
  ///
  sl.registerLazySingleton<SaveUserSettingsUseCase>(
    () => SaveUserSettingsUseCase(repository: sl()),
  );

  ///* usecase for get user settings
  ///
  sl.registerLazySingleton<GetUserSettingsUseCase>(
    () => GetUserSettingsUseCase(repository: sl()),
  );

  ///* settings repository
  sl.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(
      settingsLocalDataSource: sl(),
    ),
  );

  /// settings mapper
  sl.registerLazySingleton<SettingsMapper>(() => SettingsMapper());

  ///* settings local data source
  ///settings local data source
  sl.registerLazySingleton<SettingsLocalDataSourceImpl>(
    () => SettingsLocalDataSourceImpl(sharedPreferences: sl()),
  );
}
