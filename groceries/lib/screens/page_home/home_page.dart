import 'dart:async';

import 'package:code_base/screens/page_home/home_bloc.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/screens/widgets/product_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:code_base/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../models/product_model.dart';

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
            Padding(
              padding: const EdgeInsets.only(
                  top: AppDimens.spacing20, bottom: AppDimens.spacing15),
              child: searchButton(),
            ),
            const SalesOff(),
            Expanded(
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView(
                  children: [
                    _titleBase(title: 'Exclusive Offer', seeAll: () {}),
                    _listProduct(listProduct: HomeBloc().listExclusive),
                    _titleBase(title: 'Best Selling', seeAll: () {}),
                    _listProduct(listProduct: HomeBloc().listExclusive),
                    _titleBase(title: 'Groceries', seeAll: () {}),
                    _listProduct(listProduct: HomeBloc().listExclusive),
                  ],
                ),
              ),
            ),
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

  Widget _titleBase({required String title, required Function seeAll}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimens.spacing15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
                color: AppColor.black,
                fontSize: AppDimens.sizeTxt17,
                fontWeight: FontWeight.w800,
                fontFamily: AppTextStyle.fontSemibold),
          ),
          GestureDetector(
            onTap: () {
              seeAll();
            },
            child: const Text(
              "See all",
              style: TextStyle(
                  color: Color(0xff53B175),
                  fontSize: AppDimens.sizeTxt13,
                  fontFamily: AppTextStyle.fontSemibold,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _listProduct({required List<ProductModel> listProduct}) {
    return SizedBox(
      height: 130,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listProduct.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                right:
                    listProduct.length - 1 == index ? 0 : AppDimens.spacing8),
            child: GestureDetector(
              onTap: () {},
              child: ProductWidget(
                image: listProduct[index].image,
                name: listProduct[index].name,
                qualityPieces: listProduct[index].qualityPieces,
                price: listProduct[index].price,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SalesOff extends StatefulWidget {
  const SalesOff({super.key});

  @override
  State<SalesOff> createState() => _SalesOffState();
}

class _SalesOffState extends State<SalesOff> {
  final List<String> _bgBanner = [
    AppImage.home_bg_banner,
    AppImage.home_bg_banner,
    AppImage.home_bg_banner,
  ];

  int _indexPage = 0;
  bool _nextPage = true;
  late Timer _timer;

  final PageController _pageController = PageController();

  @override
  void initState() {
    animationPage();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageView.builder(
            itemCount: _bgBanner.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(_bgBanner[index]), fit: BoxFit.fill)),
              );
            },
            onPageChanged: (index) {
              setState(() {
                _indexPage = index;
              });
            },
            controller: _pageController,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: AppDimens.spacing5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                _bgBanner.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInCubic,
                    height: 8,
                    width: _indexPage == index ? 16 : 8,
                    decoration: BoxDecoration(
                        color: _indexPage == index
                            ? AppColor.mainColor
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void animationPage() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_indexPage == 0) {
        _nextPage = true;
      } else if (_indexPage == _bgBanner.length - 1) {
        _nextPage = false;
      }

      if (_nextPage) {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutExpo);
      }

      if (!_nextPage) {
        _pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutExpo);
      }
    });
  }
}
