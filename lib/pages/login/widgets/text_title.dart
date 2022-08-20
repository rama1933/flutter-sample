import 'package:flutter/material.dart';

import '../../../config/size_config.dart';

class WidgetTextTitle extends StatelessWidget {
  final String title;

  const WidgetTextTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.screenHeight! / 22.77,
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
