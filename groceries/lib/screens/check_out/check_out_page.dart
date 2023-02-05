import 'package:code_base/models/checkout_model.dart';
import 'package:code_base/screens/widgets/button_widget.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../theme/style.dart';

class CheckOutPage extends StatelessWidget {
  final double totalPrice;
  const CheckOutPage({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    List<CheckOutModel> listCheckOut = [
      CheckOutModel(
          title: "delivery".tr(),
          widget: Text(
            "select_method".tr(),
            style: const TextStyle(
                color: AppColor.black,
                fontSize: AppDimens.sizeTxt13,
                fontWeight: FontWeight.w700,
                fontFamily: AppTextStyle.fontSemibold),
          )),
      CheckOutModel(
          title: 'payment'.tr(),
          widget: const ImageWidget(
              asset: AppImage.check_out_ic_card, width: 20, height: 15)),
      CheckOutModel(
          title: "promo_code".tr(),
          widget: Text(
            "pick_discount".tr(),
            style: const TextStyle(
                color: AppColor.black,
                fontSize: AppDimens.sizeTxt13,
                fontWeight: FontWeight.w700,
                fontFamily: AppTextStyle.fontSemibold),
          )),
      CheckOutModel(
          title: "total_cost".tr(),
          widget: Text(
            "\$$totalPrice".tr(),
            style: const TextStyle(
                color: AppColor.black,
                fontSize: AppDimens.sizeTxt13,
                fontWeight: FontWeight.w700,
                fontFamily: AppTextStyle.fontSemibold),
          )),
    ];

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(AppDimens.spacing17))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _headerCheckOut(),
          const Divider(color: Color(0xff78746D), height: 1),
          Column(
              children: List.generate(
                  listCheckOut.length,
                  (index) => _itemCheckOut(
                      title: listCheckOut[index].title,
                      centerWidget: listCheckOut[index].widget))),
          Padding(
            padding: const EdgeInsets.only(top: AppDimens.spacing20),
            child: termOfService(),
          ),
          _buttonOrder(context),
        ],
      ),
    );
  }

  Widget _headerCheckOut() {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: AppDimens.horizontalCommon),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "checkout".tr(),
            style: const TextStyle(
                fontSize: AppDimens.sizeTxt15,
                color: AppColor.black,
                fontWeight: FontWeight.w800,
                fontFamily: AppTextStyle.fontSemibold),
          ),
          const Icon(
            Icons.close,
            color: AppColor.black,
            size: 20,
          )
        ],
      ),
    );
  }

  Widget _itemCheckOut({required String title, required Widget centerWidget}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacing20),
      child: Column(
        children: <Widget>[
          SizedBox(
              height: 50,
              child: Row(
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                        color: Color(0xff78746D),
                        fontSize: AppDimens.sizeTxt13,
                        fontFamily: AppTextStyle.fontSemibold),
                  ),
                  const Spacer(),
                  centerWidget,
                  const SizedBox(width: AppDimens.spacing8),
                  const Icon(Icons.arrow_forward_ios, size: 15)
                ],
              )),
          const Divider(color: Color(0xff78746D), height: 1)
        ],
      ),
    );
  }

  Widget termOfService() {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppDimens.horizontalCommon),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'by_placing_an_order'.tr(),
            style: const TextStyle(
                color: Color(0xff78746D),
                fontSize: AppDimens.sizeTxt12,
                fontFamily: AppTextStyle.fontSemibold),
          ),
          TextSpan(
              text: 'term_of_service'.tr(),
              style: const TextStyle(
                  color: AppColor.black,
                  fontSize: AppDimens.sizeTxt12,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppTextStyle.fontSemibold))
        ]),
      ),
    );
  }

  Widget _buttonOrder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.horizontalCommon),
      child: ButtonCommon(
          onPressed: () {
            // Lottie.asset(AppImage.img_success);
            Navigator.of(context).pop();
          },
          text: "place_order".tr()),
    );
  }
}
