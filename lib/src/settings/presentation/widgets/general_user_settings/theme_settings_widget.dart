import 'package:flutter/material.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../domain/entities/user_settings.dart';
import '../../blocs/user_settings/user_settings_bloc.dart';

class ThemeSettingsWidget extends StatelessWidget {
  final UserSettings settings;
  final void Function(UserSettings) onChanged;
  final UserSettingsBloc userSettingsBloc;

  const ThemeSettingsWidget({
    super.key,
    required this.settings,
    required this.onChanged,
    required this.userSettingsBloc,
  });

  @override
  Widget build(BuildContext context) {
    final ExpansibleController controller = ExpansibleController();

    return ExpansionTile(
      controller: controller,
      leading: !settings.isDark(context)
          ? const Icon(Icons.light_mode)
          : const Icon(Icons.dark_mode),
      subtitle: Text(
        AppTheme.getThemeName(
          context: context,
          code: settings.appTheme,
        ).capitalizeFirstLetter(),
      ),
      title: Text(Tr.of(context).appTheme.capitalizeFirstLetter()),
      children: AppTheme.getThemes(context).map((ThemeModel theme) {
        return RadioListTile.adaptive(
          onChanged: (value) {
            onChanged(settings.copyWith(appTheme: theme.code));
            controller.collapse();
          },
          groupValue: settings.appTheme,
          value: theme.code,
          selected: settings.appTheme == theme.code ? true : false,
          title: Text(
            AppTheme.getThemeName(
              context: context,
              code: theme.code,
            ).capitalizeFirstLetter(),
          ),
        );
      }).toList(),
    );
  }
}
