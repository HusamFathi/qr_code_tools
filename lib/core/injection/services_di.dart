import '../routes/routes_service.dart';
import '../services/global_settings_sevice.dart';
import 'init_di.dart' show sl;

void servicesDi() {
  sl.registerSingleton<RoutesService>(RoutesService());
  sl<RoutesService>().init();
  sl.registerLazySingleton<GlobalSettingsService>(
    () => GlobalSettingsService(),
  );
}
