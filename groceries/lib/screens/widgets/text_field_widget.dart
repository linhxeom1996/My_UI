import 'package:code_base/base/text_field_base.dart';
import 'package:code_base/theme/style.dart';
import 'package:flutter/material.dart';

import '../../theme/dimens.dart';

class TextFieldCommon extends StatelessWidget {
  final String label;
  final String hintText;
  final bool? obscureText;
  final IconData? suffixIcon;
  const TextFieldCommon(
      {super.key,
      required this.label,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(label,
                style: const TextStyle(
                    color: Color(0xff78746D),
                    fontSize: AppDimens.sizeTxt13,
                    fontFamily: 'Semibold',
                    fontWeight: FontWeight.w600))),
        TextFieldBase(
          obscureText: obscureText,
          underBorder: true,
          hintText: hintText,
          hintStyle: AppTextStyle.txtStyleGilroy,
          colorBorder: const Color(0xffE2E2E2),
          suffixIcon: suffixIcon,
          hozirontal: 0,
        ),
      ],
    );
  }
}
