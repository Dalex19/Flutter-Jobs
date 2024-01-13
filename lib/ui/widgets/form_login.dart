
import 'package:flutter/material.dart';
import 'package:flutter_jobs/ui/widgets/custom_button.dart';
import 'package:flutter_jobs/ui/widgets/info_button.dart';
import 'package:flutter_jobs/ui/widgets/password_field.dart';
import 'package:go_router/go_router.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  FormLoginState createState() {
    return FormLoginState();
  }
}

class FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build (BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: "Email",
              enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black26),
                    )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          PasswordField(passwordController),
          InfoButton("Have you forgotten your password?", "Forgot Password", () { }),
          CustomButton("Log in", const Color(0xFF253D57),  () {
            if (_formKey.currentState!.validate()) {
                    Map<String, String> data = {
                      "email": emailController.text,
                      "password": passwordController.text
                    };
                    print(data);
                  }
           }, colorText: Colors.white),
          Center(child: InfoButton("Dont have an account yet?", "Register Here", () => context.go("/register")),)
        ]),
      
    );
  }

}