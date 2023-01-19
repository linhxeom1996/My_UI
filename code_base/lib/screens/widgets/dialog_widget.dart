import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'image_widget.dart';

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

  // t.b.d code
  Future<void> showNotifyDialog(BuildContext context) {
    return dialogBase(
      context,
      child: const ImageWidget(
        asset: "assets/jsons/ic_loading.json",
        height: 100,
      ),
    );
  }

  Future<void> showToast({required String msg, bool? topPosition = true}) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: topPosition != true ? ToastGravity.BOTTOM : ToastGravity.CENTER,
    );
  }

  // t.b.d code
  void configloadingDialog(int typeLoading) {
    EasyLoading.instance
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorColor = Colors.white
      ..textColor = Colors.black
      ..progressColor = Colors.white
      ..maskColor = Colors.white
      ..backgroundColor = Colors.blue;
  }

  void showLoadingDialog(
      {required int typeLoading, bool? dismissOnTap = true}) {
    configloadingDialog(typeLoading);
    // type 1, 2, is nomal, progress
    switch (typeLoading) {
      case 1:
        EasyLoading.show(status: "Loadding...", dismissOnTap: dismissOnTap);
        break;
      case 2:
        double progress = 0;
        Timer.periodic(const Duration(milliseconds: 100), (Timer value) {
          EasyLoading.showProgress(
            progress,
            status: '${(progress * 100).toStringAsFixed(0)}%',
          );
          if (progress <= 0.97) {
            progress += 0.03;
          } else {
            value.cancel();
            EasyLoading.dismiss();
          }
        });
        break;
      case 3:
        EasyLoading.showSuccess("Great Success!", dismissOnTap: dismissOnTap);
        break;
    }
  }
}

class LoadingWidget extends StatelessWidget {
  final double? height;
  const LoadingWidget({this.height = 130, super.key});

  @override
  Widget build(BuildContext context) {
    return ImageWidget(
      asset: "assets/jsons/ic_loading.json",
      height: height,
    );
  }
}
