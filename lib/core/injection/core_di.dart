
import '../locale/app_language.dart';
import '../network/network_info.dart';
import 'init_di.dart' show sl;

void coreDI() async {
  //* core dependencies
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerLazySingleton<AppLanguage>(() => AppLanguage());

}
