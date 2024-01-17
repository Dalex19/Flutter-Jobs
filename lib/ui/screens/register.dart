import 'package:flutter/material.dart';
import 'package:flutter_jobs/ui/widgets/form_register.dart';
import 'package:flutter_jobs/ui/widgets/toolbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Center(
          child: Container(
            child: Column(children: [
              SvgPicture.asset("assets/registerIcon.svg",
                  width: MediaQuery.of(context).size.width * 0.9),
              const SizedBox(height: 8),
              const Toolbar("Register", "Before you start, register yourself with us")
            ]),
          ),
        ),
        const FormRegister()
      ]),
    )));
  }
}
