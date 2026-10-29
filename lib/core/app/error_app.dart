import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

import '../locale/app_localizations_helper.dart';
import 'app_error_page.dart';

class AppError extends StatelessWidget {
  final String error;
  final String stack;

  const AppError({super.key, required this.error, required this.stack});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        LocaleNamesLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        Tr.getDelegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ar'), Locale('pt')],
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (ctx) => AppErrorPage(error: error, stack: stack),
      ),
    );
  }
}
