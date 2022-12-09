import 'package:flutter/material.dart';
import 'package:home_clean/screen/extentions/color_extention.dart';
import 'package:home_clean/screen/extentions/style_text_extention.dart';

class ElevatorButtonBase extends StatelessWidget {
  final String text;
  final Color? color;
  final Function onPressed;
  final Color? backgroundColor;
  const ElevatorButtonBase(
      {Key? key,
      required this.text,
      this.color = ColorBase.mainGreenColor,
      this.backgroundColor = ColorBase.whiteColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          onPressed;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const StadiumBorder(),
        ),
        child: Text(
          text,
          style: TextStyleBase.montserratStyle(color: color!, size: 16),
        ),
      ),
    );
  }
}
