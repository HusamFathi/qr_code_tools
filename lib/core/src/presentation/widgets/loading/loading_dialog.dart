import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';
import '../../../../utils/constants.dart';
import 'loading_widget.dart';

Future<void> showLoadingDialog(BuildContext context) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => PopScope(
      canPop: false,
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Tr.of(context).loadingMessage.capitalizeFirstLetter()),
            const Gap(kLargeGap),
            const LoadingWidget(),
           
          ],
        ),
      ),
    ),
  );
}
