import 'package:flutter/material.dart';

class AppColor {
  static const white = Colors.white;
  static const black = Colors.black;
  static const black54 = Colors.black54;
  static const mainColor = Colors.green;
  static const bgButtonColor = Colors.red;

  static Color parseColor(String color) {
    String hex = color.replaceAll("#", "");
    if (hex.isEmpty) hex = "ffffff";
    if (hex.length == 3) {
      hex =
          '${hex.substring(0, 1)}${hex.substring(0, 1)}${hex.substring(1, 2)}${hex.substring(1, 2)}${hex.substring(2, 3)}${hex.substring(2, 3)}';
    }
    Color col = Color(int.parse(hex, radix: 16)).withOpacity(1.0);
    return col;
  }
}
