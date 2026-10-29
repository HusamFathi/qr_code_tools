import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';
import '../../../domain/entities/language.dart';

class LanguagePickerDialog extends StatefulWidget {
  final Function(Language) onPick;
  final List<String> excludedLanguage;
  final List<String> supportedLanguages;
  const LanguagePickerDialog({
    super.key,
    required this.onPick,
    required this.excludedLanguage,
    required this.supportedLanguages,
  });

  @override
  State<LanguagePickerDialog> createState() => _LanguagePickerDialogState();
}

class _LanguagePickerDialogState extends State<LanguagePickerDialog> {
  String? language;

  @override
  Widget build(BuildContext context) {
    widget.supportedLanguages.removeWhere(
      (element) => widget.excludedLanguage.contains(element),
    );

    return AlertDialog(
      title: ListTile(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.cancel),
        ),
        title: Text(Tr.of(context).chooseLanguage.capitalizeFirstLetter()),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: widget.supportedLanguages.length,
          itemBuilder: (context, index) {
            final languageCode = widget.supportedLanguages[index];
            // final nativeName =
            //     LocaleNames.of(context)!.nameOf(languageCode) ?? languageCode;
            // Temporarily switch to English locale for English names
            final englishName =
                LocaleNames.of(context)!.nameOf(languageCode) ?? languageCode;

            return ListTile(
              title: Text(englishName.toString()),
              onTap: () {
                final Language lang = Language(
                  localCode: widget.supportedLanguages[index],
                  local: Locale(widget.supportedLanguages[index]),
                );
                widget.onPick(lang);
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
    );
  }
}
