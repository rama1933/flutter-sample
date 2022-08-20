import 'package:flutter/material.dart';

import '../../../config/size_config.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SizeConfig.screenWidth! / 15.3),
      child: Container(
        alignment: Alignment.centerRight,
        child: const Text(
          "Forgot Password?",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
