import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

class AppDialog {
  Future<void> dialogBase(
    BuildContext context, {
    Color? bgColor = Colors.white,
    bool? fillHeight = false,
    double? height,
    double? radius,
    bool? dismissible,
    required Widget child,
  }) {
    var sizeScreen = MediaQuery.of(context).size;
    return showAnimatedDialog(
        context: context,
        barrierDismissible: dismissible ?? true,
        animationType: DialogTransitionType.slideFromBottom,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 400),
        builder: (context) {
          return Dialog(
              backgroundColor: bgColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 0)),
              child: Container(
                height:
                    fillHeight == true ? null : height ?? sizeScreen.height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(radius ?? 0)),
                child: child,
              ));
        });
  }

  Future<void> showNotifyDialog(BuildContext context) {
    return dialogBase(context,
        child: const Text(
          "Hello",
          style: TextStyle(color: Colors.red),
        ));
  }
}
