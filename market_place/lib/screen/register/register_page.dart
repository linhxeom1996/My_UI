import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_clean/screen/widgets/elevator_button_base.dart';
import 'package:home_clean/screen/widgets/text_field_base.dart';

import '../extentions/color_extention.dart';
import '../extentions/style_text_extention.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorBase.mainGreenColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back,
          color: ColorBase.whiteColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 7, bottom: 20),
                child: Text(
                  "welcome to".tr(),
                  style: TextStyleBase.montserratStyle(
                      color: ColorBase.whiteColor, size: 24),
                ),
              ),
              Text(
                "sign to".tr(),
                style: TextStyleBase.montserratStyle(
                    color: ColorBase.whiteColor, size: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                child: TextFormFieldBase(hintText: "first name".tr()),
              ),
              TextFormFieldBase(hintText: "last name".tr()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormFieldBase(hintText: "email id".tr()),
              ),
              TextFormFieldBase(hintText: "password".tr()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormFieldBase(hintText: "password".tr()),
              ),
              TextFormFieldBase(hintText: "re password".tr()),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child:
                    ElevatorButtonBase(text: "create".tr(), onPressed: () {}),
              ),
              GestureDetector(
                onTap: () {},
                child: RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text: "have an account".tr(),
                      style: TextStyleBase.montserratStyle(
                          color: ColorBase.whiteColor, size: 16),
                    ),
                    TextSpan(
                      text: "sign in".tr(),
                      style: TextStyleBase.montserratStyle(
                          color: ColorBase.whiteColor,
                          size: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
