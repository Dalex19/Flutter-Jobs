
import 'package:flutter/material.dart';
import 'package:flutter_jobs/constants/routes_constants.dart';
import 'package:flutter_jobs/helpers/snackbar_helper.dart';
import 'package:flutter_jobs/services/user.dart';
import 'package:flutter_jobs/ui/styles/form_field_styles.dart';
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
  bool isConnectd = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void cleanForm() {
    emailController.clear();
    passwordController.clear();
  }

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
            decoration: FormFieldStyles.textFormFieldDecoration(labelText: "Email", prefixIcon: Icons.email),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          PasswordField(passwordController),
          InfoButton("Have you forgotten your password?", "Forgot Password", () => context.go("/test")),
          CustomButton("Log in", const Color(0xFF253D57), () {
          if (_formKey.currentState!.validate()) {
            try {
              UserList.loginUser(emailController.text);
              context.go(RoutesConstants.home);
            } catch (e) {
              final snackBar = SnackBarHelper.buildErroSnackBar(context, "Error in login", cleanForm);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          }
        }, colorText: Colors.white),
          Center(child: InfoButton("Dont have an account yet?", "Register Here", () => context.go(RoutesConstants.register))),
        ]),
      
    );
  }

}