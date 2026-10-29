import 'package:flutter/material.dart';

import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';

Future<bool> confirmDiscardChanges({required BuildContext context}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(Tr.of(context).doYouWantToContinue.toTitle()),
        content: Text(
          Tr.of(context).youChangesWillBeLost.capitalizeFirstLetter(),
        ),
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text(Tr.of(context).confirm.capitalizeFirstLetter()),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text(Tr.of(context).cancel.capitalizeFirstLetter()),
          ),
        ],
      );
    },
  );
}
