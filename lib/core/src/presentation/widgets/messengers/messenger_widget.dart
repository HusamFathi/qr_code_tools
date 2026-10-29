import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QuickMessengerWidget {
  static void showErrorMessage({
    required BuildContext context,
    required String message,
  }) {
    if (!kIsWeb) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text(message)),
      );
    } else {
      //! show tost or dialog
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        webPosition: 'center',
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        webBgColor: 'red',
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  static void showSuccessesMessage({
    required BuildContext context,
    required String message,
  }) {
    if (!kIsWeb) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.green, content: Text(message)),
      );
    } else {
      //! show tost or dialog
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        webPosition: 'center',
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        webBgColor: 'green',
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
