import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:code_base/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.horizontalCommon),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                  top: AppDimens.spacing30, bottom: AppDimens.spacing10),
              child: ImageWidget(
                asset: AppImage.login_ic_header,
                width: 40,
                height: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const ImageWidget(
                  asset: AppImage.home_ic_location,
                  color: Color(0xff4C4F4D),
                ),
                const SizedBox(width: AppDimens.spacing10),
                Text(
                  'location'.tr(),
                  style: const TextStyle(
                      color: Color(0xff4C4F4D),
                      fontSize: AppDimens.sizeTxt14,
                      fontWeight: FontWeight.w600,
                      fontFamily: AppTextStyle.fontSemibold),
                )
              ],
            ),
            searchButton(),
          ],
        ),
      ),
    );
  }

  Widget searchButton() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xffF2F3F2),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
                left: AppDimens.spacing15, right: AppDimens.spacing10),
            child: ImageWidget(
                asset: AppImage.home_ic_search, width: 17, height: 17),
          ),
          Text(
            'search_store'.tr(),
            style: const TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: AppDimens.sizeTxt13,
                fontFamily: AppTextStyle.fontSemibold),
          )
        ],
      ),
    );
  }
}
