
import 'package:flutter/material.dart';
import 'package:flutter_jobs/ui/widgets/toolbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //mueve elementos verticalmente
        //crossAxisAlignment: CrossAxisAlignment.center, //mueve elemento horizontalmente
        children: [
           Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.4,
              child:  SvgPicture.asset("assets/registerIcon.svg"),
            ),
            ),
          Toolbar("Register", "Before you start, register yourself with us")
        ]),
    );
  }

}