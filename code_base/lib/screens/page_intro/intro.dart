import 'package:code_base/models/intro_model.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:code_base/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<IntroModel> _bodyIntro = [
    IntroModel(image: AppImage.intro_bg_1, title: 'title_intro_1'.tr()),
    IntroModel(image: AppImage.intro_bg_2, title: 'title_intro_2'.tr()),
    IntroModel(image: AppImage.intro_bg_3, title: 'title_intro_3'.tr()),
  ];

  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "skip".tr(),
                  style: const TextStyle(
                      color: AppColor.black54, fontSize: AppDimens.sizeTxt16),
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: PageView.builder(
                    itemCount: _bodyIntro.length,
                    onPageChanged: (index) {
                      setState(() {
                        _indexPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          ImageWidget(asset: _bodyIntro[index].image),
                          const SizedBox(
                            height: AppDimens.spacing10,
                          ),
                          Text(_bodyIntro[index].title,
                              style: AppTextStyle.titlestyleCommon)
                        ],
                      );
                    },
                  ),
                ),
              ),
              Text('description_intro'.tr(), style: AppTextStyle.textstyle1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _bodyIntro.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInCubic,
                      height: 11,
                      width: _indexPage == index ? 22 : 11,
                      decoration: BoxDecoration(
                          color: _indexPage == index
                              ? AppColor.mainColor
                              : const Color(0xffD5D4D4).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
