import 'package:flutter/material.dart';

import '../../../config/size_config.dart';
import 'text_title.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.screenHeight! / 27.32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: SizeConfig.screenWidth! / 2.74,
              height: SizeConfig.screenHeight! / 7.762,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/64/apple.png'),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight! / 68.3),
              child: const WidgetTextTitle(title: "Iphone Store"),
            ),
          )
        ],
      ),
    );
  }
}
