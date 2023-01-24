import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Text(
        "Page 1",
        style: TextStyle(color: AppColor.mainColor, fontSize: AppDimens.size22),
      ),
    );
  }
}
