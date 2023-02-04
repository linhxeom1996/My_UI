import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:code_base/theme/style.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/button_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            const AppBarCommon(title: "My Cart"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.horizontalCommon),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _itemCart(
                            title: "Bell Pepper Red",
                            qualityPieces: "1kg, Price",
                            number: 1,
                            price: 4.99);
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.horizontalCommon, vertical: 20),
              child: ButtonCommon(text: "Go to Checkout", onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemCart(
      {required String title,
      required String qualityPieces,
      required int number,
      required double price}) {
    double sizeButton = 25;
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.transparent,
          child: Row(
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                padding: const EdgeInsets.all(AppDimens.spacing20),
                child: Image.asset(
                  AppImage.img_bell,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppDimens.spacing10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      padding: const EdgeInsets.only(
                          top: AppDimens.spacing3, bottom: AppDimens.spacing15),
                      child: Text(
                        qualityPieces,
                        style: const TextStyle(
                            color: Color(0xff78746D),
                            fontSize: AppDimens.sizeTxt11,
                            fontFamily: AppTextStyle.fontSemibold),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: sizeButton,
                          height: sizeButton,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(9)),
                          child: const Icon(Icons.remove),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppDimens.spacing10),
                          child: Text(
                            "$number",
                            style: const TextStyle(
                                color: AppColor.black,
                                fontSize: AppDimens.sizeTxt14,
                                fontFamily: AppTextStyle.fontSemibold,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          width: sizeButton,
                          height: sizeButton,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.add,
                            color: AppColor.mainColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppDimens.spacing10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: const Icon(Icons.close,
                          size: 22, color: Color(0xffB3B3B3)),
                    ),
                    Text(
                      "\$$price",
                      style: const TextStyle(
                          color: AppColor.black,
                          fontSize: AppDimens.sizeTxt13,
                          fontFamily: AppTextStyle.fontSemibold,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(color: Color(0xff78746D))
      ],
    );
  }
}
