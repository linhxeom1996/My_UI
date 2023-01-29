import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:flutter/material.dart';

class ButtonBase extends StatelessWidget {
  final String text;
  final TextStyle? styleText;
  final Function onPressed;
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
      required this.onPressed,
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: hozirontal ?? 0),
      child: SizedBox(
        width: double.infinity,
        height: height ?? AppDimens.buttonHeight,
        child: outlineButton!
            ? OutlinedButton(
                onPressed: () {
                  onPressed();
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: colorBorder ?? AppColor.mainColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          radius ?? AppDimens.buttonRadius)),
                ),
                child: Text(
                  text,
                  style: styleText ??
                      TextStyle(
                          color: colorText,
                          fontSize: sizeText,
                          fontWeight: fontweightText,
                          fontFamily: fontFamilyText),
                ))
            : ElevatedButton(
                onPressed: () {
                  onPressed();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor ?? AppColor.mainColor,
                    foregroundColor: backgroundColor ?? AppColor.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius ?? 0),
                    )),
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
      ),
    );
  }
}
