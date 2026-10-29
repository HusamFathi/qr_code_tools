
import 'package:get_it/get_it.dart';
import 'package:qr_code_tools/core/injection/core_di.dart';
import 'package:qr_code_tools/core/injection/external_di.dart';
import 'package:qr_code_tools/core/injection/home_di.dart';
import 'package:qr_code_tools/core/injection/services_di.dart';
import 'package:qr_code_tools/core/injection/settings_di.dart';

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
