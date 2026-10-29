import 'package:flutter/material.dart';
import 'package:qr_code_tools/core/app/app.dart';
import 'package:qr_code_tools/core/injection/init_di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  runApp(const App());
}
