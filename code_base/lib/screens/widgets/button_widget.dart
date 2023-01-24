import 'package:code_base/base/button_base.dart';
import 'package:code_base/screens/services/notification_service.dart';
import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBase(
      text: "Press",
      colorText: Colors.red,
      onPressed: () {
        NotificationService().showNotification(1, "alerts", "title", "body");
      },
    );
  }
}
