import 'package:code_base/base/button_base.dart';
import 'package:code_base/screens/widgets/dialog_widget.dart';
import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      text: "Press",
      colorText: Colors.red,
      onPressed: () {
        AppDialog().showNotifyDialog(context);
      },
    );
  }
}
