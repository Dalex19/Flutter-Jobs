import 'package:flutter/material.dart';

class SnackBarHelper {
  static SnackBar buildErroSnackBar(BuildContext context, String message,VoidCallback onPressed) {
    return SnackBar(
      content: Text(
        message,
        style: const TextStyle(
            fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
      ),
      action: SnackBarAction(
        label: "Try again",
        onPressed: onPressed,
        textColor: Colors.green,
      ),
    );
  }
}
