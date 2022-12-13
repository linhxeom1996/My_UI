import 'package:flutter/material.dart';

class TextStyleBase {
  static TextStyle montserratStyle(
      {required Color color,
      required double size,
      FontWeight? fontWeight,
      double? letterSpacing,
      double? height}) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        fontFamily: "Montserrat",
        height: height);
  }
}
