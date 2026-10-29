import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';
import '../../../../utils/constants.dart';

class DialogMessengerWidget {
  static Future<void> showErrorMessage({
    required BuildContext context,
    required String message,
    Widget? btnOk,
    Widget? btnCancel,
    useRootNavigator = false,
  }) async {
    await AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.rightSlide,
      dismissOnTouchOutside: btnOk != null ? false : true,
      useRootNavigator: useRootNavigator,
      width: 500,
      btnOkText: Tr.of(context).ok,
      body: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Text(message, textAlign: TextAlign.center),
      ),
      btnOkColor: Theme.of(context).colorScheme.error,
      btnOk: btnOk,
      btnCancel: btnCancel,
    ).show();
  }

  static Future<void> showSuccessesMessage({
    required BuildContext context,
    required String message,
    Widget? btnOk,
    Widget? btnCancel,
    useRootNavigator = false,
  }) async {
    await AwesomeDialog(
      context: context,
      useRootNavigator: useRootNavigator,
      dialogType: DialogType.success,
      dismissOnTouchOutside: btnOk != null ? false : true,
      animType: AnimType.rightSlide,
      width: 500,
      btnOkText: Tr.of(context).ok.toTitle(),
      body: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Text(
          message.capitalizeFirstLetter(),
          textAlign: TextAlign.center,
        ),
      ),
      btnOk: btnOk,
      btnCancel: btnCancel,
    ).show();
  }

  static Future<void> showInfoMessage({
    required BuildContext context,
    required String message,
    Widget? btnOk,
    Widget? btnCancel,
    useRootNavigator = false,
  }) async {
    await AwesomeDialog(
      context: context,
      useRootNavigator: useRootNavigator,
      dialogType: DialogType.info,
      dismissOnTouchOutside: btnOk != null ? false : true,
      animType: AnimType.rightSlide,
      width: 500,
      btnOkText: Tr.of(context).ok.toTitle(),
      body: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Text(
          message.capitalizeFirstLetter(),
          textAlign: TextAlign.center,
        ),
      ),
      btnOk: btnOk,
      btnCancel: btnCancel,
    ).show();
  }
}
