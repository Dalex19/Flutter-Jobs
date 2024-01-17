import 'package:flutter/material.dart';

class FormFieldStyles {
  static InputDecoration textFormFieldDecoration ({
    String labelText = "",
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      labelText: labelText,
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.black26)
      )
    );
  }

}