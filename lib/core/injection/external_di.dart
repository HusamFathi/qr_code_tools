import 'package:encrypt_shared_preferences/provider.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'init_di.dart' show sl;

Future<void> externalDI() async {
  await EncryptedSharedPreferences.initialize('wIAXygJ8AjkSiGmh');
  final EncryptedSharedPreferences sharedPreferences =
      EncryptedSharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(() => InternetConnection());
}
