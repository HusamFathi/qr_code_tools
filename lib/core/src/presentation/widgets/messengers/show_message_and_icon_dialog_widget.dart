import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';
import '../../../../utils/constants.dart';

void showSocialAuthError({
  required BuildContext context,
  required String message,
  required Widget icon,
  required String title,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Column(
        children: [
          icon,
          const Gap(kSmallGap),
          Text(
            Tr.of(
              context,
            ).errorGettingGoogleTokenMessage.capitalizeFirstLetter(),
          ),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Text(message.capitalizeFirstLetter()),
      ),
    ),
  );
}
