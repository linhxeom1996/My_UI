import 'package:flutter/material.dart';
import 'package:home_clean/screen/extentions/color_extention.dart';
import 'package:home_clean/screen/extentions/style_text_extention.dart';

class TextFormFieldBase extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData? suffixIcon;
  const TextFormFieldBase(
      {Key? key,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyleBase.montserratStyle(
              color: ColorBase.whiteColor, size: 13),
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
          suffixIcon: Icon(
            suffixIcon,
            color: ColorBase.whiteColor,
          )),
      style:
          TextStyleBase.montserratStyle(color: ColorBase.whiteColor, size: 13),
      cursorColor: ColorBase.whiteColor,
      obscureText: obscureText,
    );
  }
}
