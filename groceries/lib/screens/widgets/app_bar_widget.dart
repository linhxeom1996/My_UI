import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/style.dart';
import 'package:flutter/material.dart';

class AppBarCommon extends StatelessWidget {
  final String title;
  const AppBarCommon({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
                fontSize: AppDimens.sizeTxt17,
                color: AppColor.black,
                fontWeight: FontWeight.w800,
                fontFamily: AppTextStyle.fontSemibold),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 0,
        )
      ],
    );
  }
}
