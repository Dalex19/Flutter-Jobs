import 'package:flutter/material.dart';
import 'package:flutter_jobs/ui/widgets/button_network.dart';
import 'package:flutter_jobs/ui/widgets/form_login.dart';
import 'package:flutter_jobs/ui/widgets/toolbar.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/loginIcon.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                const SizedBox(height: 12),
                Toolbar("Login", "Login to access many jobs"),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ButtonNetwork("assets/facebookIcon.svg", () {}),
                    const SizedBox(width: 10),
                    ButtonNetwork("assets/appleIcon.svg", () {}),
                    const SizedBox(width: 10),
                    ButtonNetwork("assets/googleIcon.svg", () {})
                  ],
                ),
                SizedBox(height: 18)
              ],
            ),
             Column(
              children: const [
                Text(
                  "Or login using your email adress",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                const SizedBox(height: 18,),
                FormLogin()
              ],
            ),
          ],
        ),
      )),
    );
  }
}
