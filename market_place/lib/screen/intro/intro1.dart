import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_clean/screen/extentions/color_extention.dart';

import '../extentions/style_text_extention.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Image.asset("assets/images/intro_bg1.png"),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 50),
          child: Text(
            "Empowering Artisans".tr(),
            textAlign: TextAlign.center,
            style: TextStyleBase.montserratStyle(
                color: ColorBase.mainColor,
                size: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
