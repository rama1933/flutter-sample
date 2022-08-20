import 'package:flutter/material.dart';

import 'text_field/email.dart';
import 'text_field/password.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginTextField({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFieldInput(
          text: "email",
          iconName: Icons.mail,
          labelText: "Email",
          emailController: emailController,
        ),
        TextFieldPassword(passwordController: passwordController),
      ],
    );
  }
}
