import 'package:flutter/material.dart';

import '../../../../config/colors.dart';
import '../../../../config/size_config.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController emailController;
  final String text;
  final IconData iconName;
  final String labelText;

  const TextFieldInput(
      {Key? key,
      required this.text,
      required this.iconName,
      required this.labelText,
      required this.emailController,
      })
      : super(key: key);

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
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: textColor),
            cursorColor: textColor,
            decoration: InputDecoration(
              prefixIcon: Icon(
                iconName,
              ),
              prefixIconColor: prefixIconColor,
              border: InputBorder.none,
              hintText: text,
              hintStyle: TextStyle(
                color: textHint.withOpacity(0.3),
              ),
              labelText: labelText,
              labelStyle: TextStyle(
                color: textLabel.withOpacity(0.6),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
