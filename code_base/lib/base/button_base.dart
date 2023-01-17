import 'package:code_base/theme/dimens.dart';
import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  final String text;
  final TextStyle? styleText;
  final Color? colorText;
  final double? sizeText;
  final FontWeight? fontweightText;
  final String? fontFamilyText;
  final double? height;
  final double? hozirontal;
  final Color? backgroundColor;
  final double? radius;
  final bool? outlineButton;
  final Color? colorBorder;
  final double? widthBorder;
  const ButtonBase(
      {required this.text,
      this.styleText,
      this.colorText,
      this.fontFamilyText,
      this.fontweightText,
      this.sizeText,
      this.height,
      this.hozirontal,
      this.backgroundColor,
      this.radius,
      this.widthBorder,
      this.colorBorder,
      this.outlineButton = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: hozirontal ?? AppDimens.horizontalCommon),
      width: double.infinity,
      height: height ?? AppDimens.buttonHeight,
      child: ElevatedButton(
        onPressed: () {},
        style: outlineButton!
            ? OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius ?? 0),
                    side: BorderSide(
                        color: colorBorder ?? const Color(0xFF000000),
                        width: widthBorder ?? 1)),
              )
            : ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                foregroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius ?? 0))),
        child: Text(
          text,
          style: styleText ??
              TextStyle(
                  color: colorText,
                  fontSize: sizeText,
                  fontWeight: fontweightText,
                  fontFamily: fontFamilyText),
        ),
      ),
    );
  }
}
