import 'package:flutter/material.dart';

import '../src/presentation/widgets/custom_input_border.dart';
import '../utils/constants.dart';
import 'components/card_theme_component.dart';

class DarkTheme {
  static ThemeData data = ThemeData(
    applyElevationOverlayColor: false,
    colorScheme: ColorScheme.fromSeed(
      seedColor: kPrimaryColor,
      secondary: kSecondaryColor,
      brightness: Brightness.dark,
    ),
    cardTheme: CardThemeComponent.data,
    appBarTheme: AppBarTheme(
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
