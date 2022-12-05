import 'package:flutter/material.dart';

class TextStyleBase {
  static TextStyle montserratStyle(
      {required Color color, required double size, FontWeight? fontWeight}) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: "Montserrat");
  }
}
