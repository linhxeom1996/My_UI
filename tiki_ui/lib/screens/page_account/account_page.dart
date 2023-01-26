import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Text(
        "Page 4",
        style: TextStyle(color: AppColor.mainColor, fontSize: AppDimens.size22),
      ),
    );
  }
}
