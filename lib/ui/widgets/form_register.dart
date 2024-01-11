import 'package:flutter/material.dart';
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
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Full Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black26),
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
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
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              PasswordField(passwordController),
              SizedBox(height: 15),
              CustomButton(
                "Register",
                Color(0xFF253D57),
                () {
                   
                  if (_formKey.currentState!.validate()) {
                    Map<String, String> data = {
                      "name" : fullnameController.text,
                      "email": emailController.text,
                      "password": passwordController.text
                    };
                    print(data);
                  }
                },
                colorText: Colors.white,
              ),
              InfoButton("Already have an account?", "Log in here", () => print("hi"))
            ],
          ),
        ));
  }
}
