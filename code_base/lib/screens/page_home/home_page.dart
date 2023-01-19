import 'package:code_base/screens/widgets/app_bar_widget.dart';
import 'package:code_base/screens/widgets/button_widget.dart';
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
        colorTitle: Colors.black,
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
