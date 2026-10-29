import 'package:flutter/material.dart';

import '../../../../../core/extensions/string.dart';
import '../../../../../core/injection/init_di.dart';
import '../../../../../core/locale/app_language.dart';
import '../../../../../core/locale/app_localizations_helper.dart';
import '../../../../../core/src/domain/entities/language.dart';
import '../../../domain/entities/user_settings.dart';

class LanguageSettingsWidget extends StatelessWidget {
  final UserSettings settings;
  final void Function(UserSettings) onChanged;

  const LanguageSettingsWidget({
    super.key,
    required this.settings,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    Language currentLanguage = sl<AppLanguage>().getCurrentLanguage(
      code: settings.appLanguage,
    );
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(Tr.of(context).language.capitalizeFirstLetter()),
      subtitle: Text(
        '${currentLanguage.getLanguageNativeName(context: context)} (${currentLanguage.localCode})',
      ),
      onTap: () {
        // show dialog to show all available languages
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                Tr.of(context).chooseLanguage.capitalizeFirstLetter(),
              ),
              content: SizedBox(
                width: 400,
                child: ListView.separated(
                  itemCount: sl<AppLanguage>()
                      .getAppLocals(context: context)
                      .length,
                  separatorBuilder: (context, index) => const Divider(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    // get language from list
                    Language language = sl<AppLanguage>().getAppLocals(
                      context: context,
                    )[index];
                    return RadioListTile(
                      title: Text(
                        language.getLanguageNativeName(context: context),
                      ),
                      groupValue: sl<AppLanguage>()
                          .getCurrentLanguage(code: settings.appLanguage)
                          .localCode,
                      value: language.localCode,
                      subtitle: Text(language.localCode),
                      selected:
                          language.localCode ==
                          sl<AppLanguage>()
                              .getCurrentLanguage(code: settings.appLanguage)
                              .localCode,
                      onChanged: (value) {
                        onChanged(
                          settings.copyWith(appLanguage: language.localCode),
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(Tr.of(context).cancel.capitalizeFirstLetter()),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
