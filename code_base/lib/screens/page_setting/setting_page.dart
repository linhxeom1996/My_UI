import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Text(
        "Page 3",
        style:
            TextStyle(color: AppColor.mainColor, fontSize: AppDimens.sizeTxt22),
      ),
    );
  }
}
