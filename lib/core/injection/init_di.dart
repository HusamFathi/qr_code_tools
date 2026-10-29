import 'package:get_it/get_it.dart';

import 'core_di.dart';
import 'external_di.dart';
import 'home_di.dart';
import 'services_di.dart';
import 'settings_di.dart';

final sl = GetIt.instance;

Future<void> initDI() async {
  //* core dependencies
  coreDI();
  //* services
  servicesDi();
  //* external dependencies
  await externalDI();

  //* home di
  homeDi();

  //* settings di
  settingsDi();
}
