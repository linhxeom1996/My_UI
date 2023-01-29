import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const fontSemibold = 'Semibold';
  static const fontGilroy = 'Gilroy';

  static const titleSemibold20 = TextStyle(
      color: AppColor.black,
      fontSize: AppDimens.sizeTxt20,
      fontWeight: FontWeight.w700,
      fontFamily: 'Semibold');

  static const txtStyleSemibold = TextStyle(
      color: Color(0xff78746D),
      fontSize: AppDimens.sizeTxt14,
      fontFamily: 'Semibold');

  static const txtStyleGilroy = TextStyle(
      color: Color(0xff78746D),
      fontSize: AppDimens.sizeTxt15,
      fontFamily: 'Gilroy');
}
