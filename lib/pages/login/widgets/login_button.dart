import 'dart:developer';

import 'package:submission/pages/home/home.dart';
import 'package:flutter/material.dart';

import '../../../config/size_config.dart';

class LoginButonColor extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginButonColor({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth! / 20.55,
          SizeConfig.screenHeight! / 7.59,
          SizeConfig.screenWidth! / 20.55,
          SizeConfig.screenHeight! / 45.54),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.lock),
        label: Text(
          "LOGIN",
          style: TextStyle(
            fontSize: SizeConfig.screenHeight! / 42.68,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          log("widget.emailController.text ${emailController.text} \n widget.passwordController.text ${passwordController.text}");

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(email: emailController.text),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
              SizeConfig.screenWidth! / 1.37, SizeConfig.screenHeight! / 13.66),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
