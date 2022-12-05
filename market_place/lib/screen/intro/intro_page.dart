import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_clean/screen/extentions/color_extention.dart';
import 'package:home_clean/screen/intro/intro1.dart';
import 'package:home_clean/screen/intro/intro2.dart';
import 'package:home_clean/screen/intro/intro3.dart';
import 'package:home_clean/screen/widgets/behavior.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<Widget> _page = const <Widget>[
    Intro1(),
    Intro2(),
    Intro3(),
  ];

  final PageController _pageController = PageController();

  int _indexPage = 0;

  @override
  Widget build(BuildContext context) {
    // var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorBase.whiteColor,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: heightScreen / 2,
              color: ColorBase.mainColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  width: double.infinity,
                  height: heightScreen * 4 / 5,
                  decoration: const BoxDecoration(
                    color: ColorBase.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: _page.length,
                            itemBuilder: (context, index) {
                              return _page[index];
                            },
                            onPageChanged: (index) {
                              setState(() {
                                _indexPage = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          _page.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInCubic,
                              height: 11,
                              width: 11,
                              decoration: BoxDecoration(
                                  color: _indexPage == index
                                      ? ColorBase.mainColor
                                      : ColorBase.mainColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  backgroundColor: ColorBase.mainColor,
                                  disabledBackgroundColor:
                                      const Color(0xff33907C)),
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInCubic);
                              },
                              child: Text("next".tr())),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
