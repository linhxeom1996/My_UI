import 'package:flutter/material.dart';

class AppDimens {
  //common
  static const borderCommon = 8.0;
  static const horizontalCommon = 20.0;
  static const verticalCommon = 20.0;

  //spacer
  static const spacing3 = 3.0;

  static const spacing5 = 5.0;
  static const spacing8 = 8.0;
  static const spacing10 = 10.0;
  static const spacing15 = 15.0;
  static const spacing17 = 17.0;
  static const spacing20 = 20.0;

  static const spacing25 = 25.0;
  static const spacing30 = 30.0;

  static const spacing32 = 30.0;
  static const spacing35 = 35.0;
  static const spacing40 = 40.0;

  static const spacing50 = 50.0;

  // button elevate
  static const buttonHeight = 50.0;
  static const buttonBorder = 8.0;
  static const buttonSizeText = 18.0;
  static const buttonRadius = 8.0;

  //text field
  static const textFieldRadius = 8.0;

  //icon
  static const icon32 = 32.0;
  static const icon35 = 35.0;
  static const icon45 = 45.0;
  static const icon40 = 40.0;

  //size text
  static const sizeTxt10 = 10.0;
  static const sizeTxt13 = 13.0;
  static const sizeTxt15 = 15.0;
  static const sizeTxt16 = 16.0;
  static const sizeTxt18 = 18.0;
  static const sizeTxt20 = 20.0;
  static const sizeTxt22 = 22.0;

  Size sizeScreen(BuildContext context) {
    return MediaQuery.of(context).size;
  }
}
