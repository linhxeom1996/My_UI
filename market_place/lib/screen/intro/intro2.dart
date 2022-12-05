import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../extentions/color_extention.dart';
import '../extentions/style_text_extention.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset("assets/images/intro_bg2.png"),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 50),
          child: Text(
            "Connecting NGOs".tr(),
            textAlign: TextAlign.center,
            style: TextStyleBase.montserratStyle(
                color: ColorBase.mainColor,
                size: 16,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
