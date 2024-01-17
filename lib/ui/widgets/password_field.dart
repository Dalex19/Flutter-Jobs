import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordController;

  const PasswordField(this.passwordController, {super.key});

  @override
  PasswordFieldState createState() {
    return PasswordFieldState();
  }
}

class PasswordFieldState extends State<PasswordField> {
  bool viewEye = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      keyboardType: TextInputType.text,
      obscureText: !viewEye,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  viewEye = !viewEye;
                });
              },
              icon: Icon(!viewEye ? Icons.lock_outline : Icons.lock_open)),
          labelText: "Password",
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black26),
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
