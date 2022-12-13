import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_clean/screen/widgets/elevator_button_base.dart';
import 'package:pinput/pinput.dart';

import '../extentions/color_extention.dart';
import '../extentions/style_text_extention.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorBase.mainGreenColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          color: ColorBase.whiteColor,
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "phone_verification".tr(),
                textAlign: TextAlign.center,
                style: TextStyleBase.montserratStyle(
                    color: ColorBase.whiteColor, size: 23),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: Text(
                  "enter your OTP".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyleBase.montserratStyle(
                      color: ColorBase.whiteColor, size: 16),
                ),
              ),
              Pinput(
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 40,
                  height: 40,
                  textStyle: TextStyleBase.montserratStyle(
                      color: ColorBase.whiteColor,
                      size: 18,
                      fontWeight: FontWeight.w600),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      bottom: BorderSide(
                        color: ColorBase.whiteColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                showCursor: false,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  "didn't you received".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyleBase.montserratStyle(
                      color: ColorBase.whiteColor, size: 16, height: 1.75),
                ),
              ),
              ElevatorButtonBase(
                text: "verify".tr(),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}


//note:
// auto fill SMS
