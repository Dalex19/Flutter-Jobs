import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jobs/constants/routes_constants.dart';
import 'package:flutter_jobs/helpers/snackbar_helper.dart';
import 'package:flutter_jobs/ui/styles/form_field_styles.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_jobs/services/user.dart';
import 'package:flutter_jobs/ui/widgets/custom_button.dart';
import 'package:flutter_jobs/ui/widgets/info_button.dart';
import 'package:flutter_jobs/ui/widgets/password_field.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  FormRegisterState createState() {
    return FormRegisterState();
  }
}

class FormRegisterState extends State<FormRegister> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void cleanForm() {
    fullnameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {

    return Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: fullnameController,
                keyboardType: TextInputType.text,
                decoration: FormFieldStyles.textFormFieldDecoration(labelText: "Full Name", prefixIcon: Icons.person),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: FormFieldStyles.textFormFieldDecoration(labelText: "Email", prefixIcon: Icons.email),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              PasswordField(passwordController),
              const SizedBox(height: 15),
              CustomButton(
                "Register",
                const Color(0xFF253D57),
                () {

                  if (_formKey.currentState!.validate()) {
                   try {
                    UserServices.registerUserFB(emailController.text, passwordController.text);
                    context.go(RoutesConstants.home);
                   } catch (e) {
                    final snackBar = SnackBarHelper.buildErroSnackBar(context, "Error in register", cleanForm);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                   }
                  }
                },
                colorText: Colors.white,
              ),
              InfoButton("Already have an account?", "Log in here", () => context.go(RoutesConstants.login)),
            ],
          ),
        ));
  }
}
