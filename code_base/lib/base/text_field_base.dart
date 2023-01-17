import 'package:flutter/material.dart';

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
      this.underBorder,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        prefixIcon: Icon(prefixIcon, color: prefixColor, size: prefixSize),
        suffixIcon: GestureDetector(
          onTap: () => tabSuffixIcon,
          child: Icon(suffixIcon, color: suffixColor, size: suffixSize),
        ),
        enabledBorder:
            border(colorBorder, radiusBorder, underBorder: underBorder),
        focusedBorder:
            border(colorBorder, radiusBorder, underBorder: underBorder),
      ),
    );
  }

  InputBorder border(Color? colorBorder, double? radiusBorder,
      {bool? underBorder = false}) {
    return underBorder!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: colorBorder ?? const Color(0xFF000000),
            ),
          )
        : OutlineInputBorder(
            borderSide: BorderSide(
              color: colorBorder ?? const Color(0xFF000000),
            ),
            borderRadius: BorderRadius.circular(radiusBorder ?? 0),
          );
  }
}
