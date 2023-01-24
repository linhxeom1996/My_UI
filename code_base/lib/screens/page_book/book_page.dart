import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Text(
        "Page 2",
        style: TextStyle(color: AppColor.mainColor, fontSize: AppDimens.size22),
      ),
    );
  }
}
