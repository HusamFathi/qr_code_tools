import 'package:flutter/material.dart';

import 'core/app/app.dart';
import 'core/injection/init_di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  runApp(const App());
}
