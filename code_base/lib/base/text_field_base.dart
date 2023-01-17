import 'dart:developer';

import 'package:code_base/theme/colors.dart';
import 'package:flutter/material.dart';

import '../theme/dimens.dart';

class TextFieldBase extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final Color? cursorColor;
  final TextStyle? textStyle;
  final Color? colorText;
  final double? sizeText;
  final FontWeight? fontWeightText;
  final String? fontFamilyText;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? colorHintText;
  final double? sizeHintText;
  final String? fontFamilyHintText;
  final FontWeight? fontWeightHintText;
  final String? labelText;
  final TextStyle? labelStyle;
  final Color? colorlabel;
  final double? sizelabel;
  final String? fontFamilylabel;
  final FontWeight? fontWeightlabel;
  final String? errorText;
  final IconData? prefixIcon;
  final Color? prefixColor;
  final double? prefixSize;
  final IconData? suffixIcon;
  final Function? tabSuffixIcon;
  final Color? suffixColor;
  final double? suffixSize;
  final Color? colorBorder;
  final double? radiusBorder;
  final bool? underBorder;
  final double? hozirontal;
  const TextFieldBase(
      {this.controller,
      this.obscureText,
      this.cursorColor,
      this.textStyle,
      this.colorText,
      this.sizeText,
      this.fontWeightText,
      this.fontFamilyText,
      this.hintText,
      this.hintStyle,
      this.colorHintText,
      this.sizeHintText,
      this.fontFamilyHintText,
      this.fontWeightHintText,
      this.labelText,
      this.labelStyle,
      this.colorlabel,
      this.fontFamilylabel,
      this.sizelabel,
      this.fontWeightlabel,
      this.errorText,
      this.prefixIcon,
      this.prefixColor,
      this.prefixSize,
      this.suffixIcon,
      this.tabSuffixIcon,
      this.suffixColor,
      this.suffixSize,
      this.colorBorder,
      this.radiusBorder,
      this.underBorder = false,
      this.hozirontal,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: hozirontal ?? AppDimens.horizontalCommon),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        cursorColor: cursorColor,
        style: textStyle ??
            TextStyle(
                color: colorText,
                fontSize: sizeText,
                fontWeight: fontWeightText,
                fontFamily: fontFamilyText),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle ??
              TextStyle(
                  color: colorHintText,
                  fontSize: sizeHintText,
                  fontFamily: fontFamilyHintText,
                  fontWeight: fontWeightHintText),
          labelText: labelText,
          labelStyle: labelStyle ??
              TextStyle(
                color: colorlabel,
                fontSize: sizelabel,
                fontFamily: fontFamilylabel,
                fontWeight: fontWeightlabel,
              ),
          errorText: errorText,
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: prefixColor, size: prefixSize)
              : null,
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  onTap: () {
                    tabSuffixIcon!();
                  },
                  child: Icon(suffixIcon, color: suffixColor, size: suffixSize),
                )
              : null,
          enabledBorder: border(colorBorder, radiusBorder, underBorder),
          focusedBorder: border(colorBorder, radiusBorder, underBorder),
        ),
      ),
    );
  }

  InputBorder border(
      Color? colorBorder, double? radiusBorder, bool? underBorder) {
    return underBorder == true
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: colorBorder ?? AppColor.mainColor,
            ),
          )
        : OutlineInputBorder(
            borderSide: BorderSide(
              color: colorBorder ?? AppColor.mainColor,
            ),
            borderRadius: BorderRadius.circular(radiusBorder ?? 0),
          );
  }
}
