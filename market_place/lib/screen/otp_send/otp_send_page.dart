import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:home_clean/screen/extentions/style_text_extention.dart';
import 'package:home_clean/screen/widgets/elevator_button_base.dart';
import '../extentions/color_extention.dart';

class SendOTPPage extends StatelessWidget {
  const SendOTPPage({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "verify your phone".tr(),
              textAlign: TextAlign.center,
              style: TextStyleBase.montserratStyle(
                  color: ColorBase.whiteColor, size: 23),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 50),
              child: Text(
                "we have sent".tr(),
                textAlign: TextAlign.center,
                style: TextStyleBase.montserratStyle(
                    color: ColorBase.whiteColor, size: 16),
              ),
            ),
            const PhoneNumber(),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "or login with".tr(),
                  style: TextStyleBase.montserratStyle(
                      color: ColorBase.whiteColor, size: 15),
                ),
              ),
            ),
            ElevatorButtonBase(text: "next".tr(), onPressed: () {})
          ],
        ),
      ),
    );
  }
}

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final List<String> items = [
    "+1",
    "+7",
    "+32",
    "+33",
    "+39",
    "+44",
    "+49",
    "+81",
    "+84",
    "+86",
    "+850",
  ];

  String _dropdownvalue = "+1";

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "9876543210",
        hintStyle: TextStyleBase.montserratStyle(
            color: ColorBase.whiteColor, size: 14),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: ColorBase.whiteColor,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: ColorBase.whiteColor,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 3),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              icon: const Icon(
                Icons.arrow_drop_down,
                color: ColorBase.whiteColor,
              ),
              iconSize: 25,
              value: _dropdownvalue,
              alignment: Alignment.centerRight,
              style: TextStyleBase.montserratStyle(
                  color: ColorBase.whiteColor, size: 14),
              dropdownMaxHeight: 200,
              dropdownWidth: 70,
              dropdownDecoration: const BoxDecoration(
                color: ColorBase.mainGreenColor,
              ),
              buttonSplashColor: Colors.transparent,
              items: items
                  .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                        ),
                      ))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  _dropdownvalue = value!;
                });
              },
            ),
          ),
        ),
      ),
      style:
          TextStyleBase.montserratStyle(color: ColorBase.whiteColor, size: 13),
      cursorColor: ColorBase.whiteColor,
    );
  }
}


//note:
//search country code 
