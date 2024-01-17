import 'package:flutter/material.dart';
import 'package:flutter_jobs/ui/widgets/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment(1, 0.0),
                colors: <Color>[
              Color(0xFF6528B1),
              Color(0xff9819D8),
              Color(0xff8B22CC),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Stack(
                    children: [
                      const Positioned(
                        child: Image(
                          image: AssetImage("assets/blob.png"),
                        ),
                      ),
                      Positioned(
                        child: SvgPicture.asset("assets/womenIcon.svg",
                            width: MediaQuery.of(context).size.width * 0.8),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Worlds Lagest \n Online Job Portal",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton("Get Started", Colors.white, () => context.go("/login")),
                  CustomButton("Register", Colors.yellow, () => context.go("/register"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
