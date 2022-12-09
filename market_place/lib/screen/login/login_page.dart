import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_clean/screen/extentions/color_extention.dart';
import 'package:home_clean/screen/extentions/style_text_extention.dart';
import '../widgets/elevator_button_base.dart';
import '../widgets/text_field_base.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorBase.mainGreenColor,
      body: Column(
        children: <Widget>[
          Text(
            "welcome to".tr(),
            style: TextStyleBase.montserratStyle(
                color: ColorBase.whiteColor, size: 24),
          ),
          Text(
            "login to".tr(),
            style: TextStyleBase.montserratStyle(
                color: ColorBase.whiteColor, size: 16),
          ),
          TextFormFieldBase(
            hintText: "email_mobile".tr(),
          ),
          TextFormFieldBase(
            hintText: "password".tr(),
          ),
          ElevatorButtonBase(
            onPressed: () {},
            text: "login".tr(),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "forgot pass".tr(),
              style: TextStyleBase.montserratStyle(
                  color: ColorBase.whiteColor, size: 16),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "don't have account".tr(),
                    style: TextStyleBase.montserratStyle(
                        color: ColorBase.whiteColor, size: 16),
                  ),
                  TextSpan(
                    text: "sign up".tr(),
                    style: TextStyleBase.montserratStyle(
                        color: ColorBase.whiteColor,
                        size: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
