import 'package:code_base/screens/widgets/app_bar_widget.dart';
import 'package:code_base/screens/widgets/button_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/dialog_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCommon(
        title: "discover".tr(),
        colorTitle: AppColor.black54,
        bgColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppDimens.spacing10),
          child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.25),
                child: const Icon(Icons.menu, color: Colors.black54),
              )),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          LoadingWidget(),
          ButtonCommon(),
        ],
      ),
    );
  }
}
