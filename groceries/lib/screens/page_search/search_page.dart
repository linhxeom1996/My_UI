import 'package:code_base/models/category_model.dart';
import 'package:code_base/screens/widgets/app_bar_widget.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<CategoryModel> _allCategory = [
    CategoryModel(
        backgroundColor: const Color(0xff53B175).withOpacity(0.7),
        image: AppImage.search_img_vegetable,
        name: "Frash Fruits & Vegetable"),
    CategoryModel(
        backgroundColor: const Color(0xff53B175).withOpacity(0.7),
        image: AppImage.search_img_cookingoil,
        name: "Cooking Oil & Ghee"),
    CategoryModel(
        backgroundColor: const Color(0xff53B175).withOpacity(0.7),
        image: AppImage.search_img_meat,
        name: "Meat & Fish"),
    CategoryModel(
        backgroundColor: const Color(0xff53B175).withOpacity(0.7),
        image: AppImage.search_img_bakery,
        name: "Bakery & Snacks"),
    CategoryModel(
        backgroundColor: const Color(0xff53B175).withOpacity(0.7),
        image: AppImage.search_img_egg,
        name: "Dairy & Eggs"),
    CategoryModel(
        backgroundColor: const Color(0xff53B175).withOpacity(0.7),
        image: AppImage.search_img_beverages,
        name: "Beverages"),
  ];

  List<CategoryModel> _fitterCategory = [];

  @override
  void initState() {
    _fitterCategory = _allCategory;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding:
            const EdgeInsets.symmetric(horizontal: AppDimens.horizontalCommon),
        child: Column(
          children: [
            AppBarCommon(title: "find_products".tr(), divider: false),
            searchWidget(),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(
                  _fitterCategory.length,
                  (index) => _itemCategory(
                      backgroundColor: _fitterCategory[index].backgroundColor,
                      title: _fitterCategory[index].name,
                      image: _fitterCategory[index].image)),
            ))
          ],
        ),
      ),
    );
  }

  Widget searchWidget() {
    return Padding(
      padding: const EdgeInsets.only(
          top: AppDimens.spacing20, bottom: AppDimens.spacing10),
      child: TextFormField(
        cursorColor: const Color(0xff7C7C7C),
        style: textStyle(),
        onChanged: (value) {
          _filter(value);
        },
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: const Color(0xffF2F3F2),
          prefixIcon: const Icon(Icons.search, size: 20, color: AppColor.black),
          contentPadding: EdgeInsets.zero,
          hintText: 'search_store'.tr(),
          hintStyle: textStyle(),
          enabledBorder: border(),
          focusedBorder: border(),
        ),
      ),
    );
  }

  TextStyle textStyle() {
    return const TextStyle(
        color: Color(0xff7C7C7C),
        fontSize: AppDimens.sizeTxt13,
        fontFamily: AppTextStyle.fontSemibold);
  }

  InputBorder border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.transparent));
  }

  Widget _itemCategory(
      {required Color backgroundColor,
      required String title,
      required String image}) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ImageWidget(asset: image, width: 100, height: 70),
          const SizedBox(height: AppDimens.spacing8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: AppColor.black,
                fontSize: AppDimens.sizeTxt15,
                fontWeight: FontWeight.w700,
                fontFamily: AppTextStyle.fontSemibold),
          )
        ],
      ),
    );
  }

  void _filter(String value) {
    List<CategoryModel> result = [];
    if (value.isEmpty) {
      result = _allCategory;
    } else {
      result = _allCategory
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    setState(() {
      _fitterCategory = result;
    });
  }
}
