import 'package:code_base/base/button_base.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/style.dart';
import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  final String text;
  final Function onPressed;
  const ButtonCommon({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      text: text,
      colorText: AppColor.white,
      onPressed: () {
        onPressed();
      },
      radius: AppDimens.buttonBorder,
      fontFamilyText: AppTextStyle.fontSemibold,
      fontweightText: FontWeight.w700,
      sizeText: AppDimens.buttonSizeText,
    );
  }
}
