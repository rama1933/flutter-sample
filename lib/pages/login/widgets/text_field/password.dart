import 'package:flutter/material.dart';

import '../../../../config/colors.dart';
import '../../../../config/size_config.dart';

class TextFieldPassword extends StatefulWidget {
  final TextEditingController passwordController;

  const TextFieldPassword({Key? key, required this.passwordController}) : super(key: key);

  @override
  TextFieldPasswordState createState() => TextFieldPasswordState();
}

class TextFieldPasswordState extends State<TextFieldPassword> {
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.screenWidth! / 20.55,
            SizeConfig.screenHeight! / 68.3,
            SizeConfig.screenWidth! / 20.55,
            SizeConfig.screenHeight! / 34.15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100.withOpacity(0.9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextField(
            controller: widget.passwordController,
            obscureText: passwordObscure,
            style: TextStyle(color: textColor),
            cursorColor: textColor,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.vpn_key),
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordObscure = !passwordObscure;
                  });
                },
                icon: Icon(passwordObscure ? Icons.visibility_off : Icons.visibility),
              ),
              hintText: "password",
              hintStyle: TextStyle(
                color: textHint.withOpacity(0.3),
              ),
              labelText: "Password",
              labelStyle: TextStyle(
                color: textHint.withOpacity(0.6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
