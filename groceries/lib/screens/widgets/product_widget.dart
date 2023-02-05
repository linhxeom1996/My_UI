import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/style.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String name;
  final String qualityPieces;
  final double price;
  const ProductWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.qualityPieces});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      padding: const EdgeInsets.fromLTRB(7, 5, 7, 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
              width: 80,
              height: 50,
              child: ImageWidget(asset: image, fit: BoxFit.contain)),
          Container(
            height: 35,
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: _textStyle(),
                ),
                const SizedBox(height: AppDimens.spacing2),
                Text(
                  qualityPieces,
                  style: const TextStyle(
                      color: Color(0xff78746D),
                      fontSize: AppDimens.sizeTxt11,
                      fontFamily: AppTextStyle.fontSemibold),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "\$$price",
                style: _textStyle(),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColor.mainColor),
                child: const Icon(
                  Icons.add,
                  color: AppColor.white,
                  size: 15,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  TextStyle _textStyle() {
    return const TextStyle(
        color: AppColor.black,
        fontSize: AppDimens.sizeTxt11,
        fontWeight: FontWeight.w700,
        fontFamily: AppTextStyle.fontSemibold);
  }
}
