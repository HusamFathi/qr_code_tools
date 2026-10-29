import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../extensions/string.dart';
import '../locale/app_localizations_helper.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

class ThemeModel extends Equatable {
  final int code;
  final ThemeData theme;

  const ThemeModel({required this.code, required this.theme});

  @override
  List<Object?> get props => [theme, code];
}

class AppTheme {
  static List<ThemeModel> getThemes(BuildContext context) {
    bool isDark =
        WidgetsBinding.instance.platformDispatcher.platformBrightness ==
        Brightness.dark;

    return [
      ThemeModel(code: 0, theme: isDark ? DarkTheme.data : LightTheme.data),
      ThemeModel(code: 1, theme: LightTheme.data),
      ThemeModel(code: 2, theme: DarkTheme.data),
    ];
  }

  static String getThemeName({
    required int code,
    required BuildContext context,
  }) {
    switch (code) {
      case 0:
        return Tr.of(context).syncWithSystem.capitalizeFirstLetter();
      case 1:
        return Tr.of(context).light.capitalizeFirstLetter();

      case 2:
        return Tr.of(context).dark.capitalizeFirstLetter();

      default:
        return Tr.of(context).syncWithSystem.capitalizeFirstLetter();
    }
  }
}
