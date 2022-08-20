import 'package:flutter/material.dart';

import 'widgets/forgot_password.dart';
import 'widgets/login_button.dart';
import 'widgets/logo.dart';
import 'widgets/text_field.dart';
import 'widgets/text_register.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Logo(),
                LoginTextField(
                    emailController: _emailController,
                    passwordController: _passwordController),
                const ForgotPassword(),
                LoginButonColor(
                    emailController: _emailController,
                    passwordController: _passwordController),
                const TextRegister(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
