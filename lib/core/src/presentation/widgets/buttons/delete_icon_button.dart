import 'package:flutter/material.dart';

import '../../../../extensions/string.dart';
import '../../../../locale/app_localizations_helper.dart';

class DeleteIconButton extends StatelessWidget {
  final Function onDeleteConfirm;
  const DeleteIconButton({super.key, required this.onDeleteConfirm});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.delete, color: Colors.red),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                Tr.of(context).confirmDeletionAction.capitalizeFirstLetter(),
              ),
              content: Text(
                Tr.of(context).confirmThisActionMessage.capitalizeFirstLetter(),
              ),
              actions: <Widget>[
                OutlinedButton(
                  child: Text(Tr.of(context).discard.capitalizeFirstLetter()),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FilledButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                    foregroundColor: WidgetStateProperty.all<Color>(
                      Colors.white,
                    ),
                  ),
                  child: Text(Tr.of(context).delete.capitalizeFirstLetter()),
                  onPressed: () {
                    Navigator.of(context).pop();
                    onDeleteConfirm();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
