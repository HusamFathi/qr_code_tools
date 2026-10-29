import 'package:flutter/material.dart';

import '../../../extensions/string.dart';
import '../../../locale/app_localizations_helper.dart';
import '../../../utils/constants.dart';

class TextFieldTitleWidget extends StatelessWidget {
  final String text;
  final bool isOptional;
  const TextFieldTitleWidget({
    super.key,
    required this.text,
    this.isOptional = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kSmallPadding),
      child: Text(
        isOptional
            ? '${text.capitalizeFirstLetter()}  (${Tr.of(context).optional.capitalizeFirstLetter()})'
            : text.capitalizeFirstLetter(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
