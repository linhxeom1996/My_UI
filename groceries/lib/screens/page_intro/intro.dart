import 'dart:developer';

import 'package:code_base/base/button_base.dart';
import 'package:code_base/screens/routers/path_router.dart';
import 'package:code_base/screens/widgets/button_widget.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:code_base/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.intro_bg),
            fit: BoxFit.fill,
          ),
        ),
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.horizontalCommon),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const ImageWidget(
              asset: AppImage.intro_img_carrot,
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: AppDimens.spacing20, bottom: AppDimens.spacing5),
              child: Text(
                "title_intro".tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColor.white,
                    fontSize: AppDimens.sizeTxt40,
                    fontFamily: AppTextStyle.fontSemibold,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              "description_intro".tr(),
              style: const TextStyle(
                  color: AppColor.white,
                  fontSize: AppDimens.sizeTxt14,
                  fontFamily: AppTextStyle.fontSemibold),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: AppDimens.spacing30, bottom: AppDimens.spacing40),
              child: ButtonCommon(
                text: "Get started",
                onPressed: () {
                  Navigator.pushNamed(context, PathScreen.login);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
