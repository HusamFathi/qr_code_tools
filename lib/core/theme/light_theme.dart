import 'package:flutter/material.dart';

import '../src/presentation/widgets/custom_input_border.dart';
import '../utils/constants.dart';
import 'components/card_theme_component.dart';

class LightTheme {
  static ThemeData data = ThemeData(
    cardTheme: CardThemeComponent.data,
    colorScheme: ColorScheme.fromSeed(
      seedColor: kPrimaryColor,
      secondary: kSecondaryColor,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
    ),
    navigationRailTheme: const NavigationRailThemeData(
      // backgroundColor: Theme.of(context).colorScheme.inverseSurface,
    ),
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      border: CustomInputBorder(),
    ),
  );
}
