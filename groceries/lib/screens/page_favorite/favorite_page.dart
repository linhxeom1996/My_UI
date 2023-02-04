import 'package:code_base/base/button_base.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/screens/widgets/button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/icons.dart';
import '../../theme/style.dart';
import '../widgets/app_bar_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            AppBarCommon(title: "favorite".tr()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.horizontalCommon),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _itemsFavorite(
                            title: "Bell Pepper Red",
                            qualityPieces: "1kg, Price",
                            price: 4.99);
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.horizontalCommon, vertical: 20),
              child: ButtonCommon(text: "add_to_cart".tr(), onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemsFavorite(
      {required String title,
      required String qualityPieces,
      required double price}) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 60,
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(AppDimens.spacing10),
                child: Image.asset(AppImage.img_bell, fit: BoxFit.cover),
              ),
              const SizedBox(width: AppDimens.spacing15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: AppColor.black,
                        fontSize: AppDimens.sizeTxt14,
                        fontFamily: AppTextStyle.fontSemibold,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: AppDimens.spacing3),
                    child: Text(
                      qualityPieces,
                      style: const TextStyle(
                          color: Color(0xff78746D),
                          fontSize: AppDimens.sizeTxt11,
                          fontFamily: AppTextStyle.fontSemibold),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "\$$price",
                style: const TextStyle(
                    color: AppColor.black,
                    fontSize: AppDimens.sizeTxt13,
                    fontFamily: AppTextStyle.fontSemibold,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(width: AppDimens.spacing5),
              const Icon(Icons.arrow_forward_ios, size: 15)
            ],
          ),
        ),
        const Divider(color: Color(0xff78746D))
      ],
    );
  }
}
