import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/locale/app_localizations_helper.dart';
import '../../../extensions/string.dart';
import '../../../utils/url_launcher.dart';

class ReCaptchaWidget extends StatelessWidget {
  const ReCaptchaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: Tr.of(context).reCaptchaMessage.capitalizeFirstLetter(),
        children: <InlineSpan>[
          TextSpan(
            text: ' ${Tr.of(context).privacyPolicy.toTitle()} ',
            style: const TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                UrlLauncher.open('https://policies.google.com/privacy');
              },
          ),
          TextSpan(text: ' ${Tr.of(context).and} '),
          TextSpan(
            text: ' ${Tr.of(context).termsOfUse.toTitle()} ',
            style: const TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                UrlLauncher.open('https://policies.google.com/terms');
              },
          ),
          TextSpan(text: ' ${Tr.of(context).apply}.'),
        ],
      ),
    );
  }
}
