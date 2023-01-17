import 'dart:developer';

import 'package:code_base/base/button_base.dart';
import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      text: "Press",
      fontweightText: FontWeight.w800,
      sizeText: 17,
      colorText: Colors.black,
      radius: 14,
      outlineButton: true,
      onPressed: () {
        log("check press");
      },
    );
  }
}
