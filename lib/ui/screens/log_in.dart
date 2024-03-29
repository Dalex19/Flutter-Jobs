import 'package:flutter/material.dart';
import 'package:flutter_jobs/constants/routes_constants.dart';
import 'package:flutter_jobs/helpers/snackbar_helper.dart';
import 'package:flutter_jobs/services/user.dart';
import 'package:flutter_jobs/ui/widgets/button_network.dart';
import 'package:flutter_jobs/ui/widgets/form_login.dart';
import 'package:flutter_jobs/ui/widgets/toolbar.dart';
import 'package:go_router/go_router.dart';

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
                const Toolbar("Login", "Login to access many jobs"),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ButtonNetwork("assets/facebookIcon.svg", () {
                        UserServices.signInWithFacebook()
                        .then((value) {context.go(RoutesConstants.home);})
                        .catchError((onError) {
                          final snackBar = SnackBarHelper.buildErroSnackBar(context, "Error, operation cancel", () { });
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                    }),
                    const SizedBox(width: 10),
                    ButtonNetwork("assets/appleIcon.svg", () {}),
                    const SizedBox(width: 10),
                    ButtonNetwork("assets/googleIcon.svg", () {})
                  ],
                ),
               const SizedBox(height: 18)
              ],
            ),
             Column(
              children: const [
                Text(
                  "Or login using your email adress",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                SizedBox(height: 18,),
                FormLogin()
              ],
            ),
          ],
        ),
      )),
    );
  }
}
