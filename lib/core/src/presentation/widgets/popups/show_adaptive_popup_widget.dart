import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';

Future<void> showAdaptivePopupWidget({
  required BuildContext context,
  required Widget child,
}) async {
  final TargetPlatform platform = Theme.of(context).platform;

  if (platform == TargetPlatform.android) {
    //show bottomshet
    showBottomSheet(
      enableDrag: false,
      showDragHandle: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kRoundedCorners),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      context: context,
      builder: (context) {
        return child;
      },
    );
  } else {
    // show dialog
    await showDialog(
      context: context,
      builder: (context) {
        return child;
      },
    );
  }
}
