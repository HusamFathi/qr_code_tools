// delete function will take title and will return true if user press ok or false otherwise
import 'package:flutter/material.dart';
import 'package:qr_code_tools/core/extensions/string.dart';

import '../../../../locale/app_localizations_helper.dart';

Future<bool> showConfirmDeleteDialog({
  required BuildContext context,
  required String confirmationMessage,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(Tr.of(context).doYouWantToContinue.capitalizeFirstLetter()),
        content: Text(confirmationMessage),
        actions: [
          FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.red,
              textStyle: const TextStyle(color: Colors.white),
            ),
            icon: const Icon(Icons.delete, color: Colors.white),
            onPressed: () {
              Navigator.pop(context, true);
            },
            label: Text(
              Tr.of(context).delete.capitalizeFirstLetter(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text(Tr.of(context).discard.capitalizeFirstLetter()),
          ),
        ],
      );
    },
  );
}
