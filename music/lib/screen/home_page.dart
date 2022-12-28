import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:music/extension/color_extend.dart';
import 'package:music/extension/font_extend.dart';
import 'package:music/widgets/behavior.dart';

import '../models/info_singer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<InfoSinger> singer = [
      InfoSinger(
          name: "Ayesha Ruhin",
          description: "Some Feeling",
          backgroundColor: const Color(0xff9570FF).withOpacity(0.1)),
      InfoSinger(
          name: "Jane Cooper",
          description: "I didn't know",
          backgroundColor: const Color(0xff6FCF97).withOpacity(0.1))
    ];

    const double horiScreen = 20;

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.green,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                        backgroundColor:
                            const Color(0xff9570FF).withOpacity(0.19),
                        radius: 18,
                        child: Image.asset(
                          "assets/images/home_ic_search.png",
                          width: 15,
                          height: 15,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: horiScreen, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "find_the_best".tr(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      fontFamily: FontBase.montserrat,
                    ),
                  ),
                  SizedBox(
                      height: 50,
                      child: Image.asset(
                        "assets/images/home_img_hand.png",
                        fit: BoxFit.fitHeight,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                    itemCount: singer.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return itemSinger(index, singer, horiScreen);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: horiScreen, vertical: 20),
              child: Text(
                "discover".tr(),
                style: const TextStyle(
                    color: ColorBase.blackColor,
                    fontSize: 25,
                    fontFamily: FontBase.montserrat),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemSinger(int index, List<InfoSinger> singer, double horiScreen) {
    return Padding(
      padding: EdgeInsets.only(
          left: horiScreen, right: index == singer.length - 1 ? horiScreen : 0),
      child: SizedBox(
        width: 179,
        height: 65,
        child: Stack(
          children: <Widget>[
            Container(
              width: 170,
              height: 65,
              decoration: BoxDecoration(
                  color: singer[index].backgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        singer[index].name!,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: FontBase.montserrat),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 7,
                            backgroundColor: Color(0xff9570FF),
                            child: Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 8,
                            ),
                          ),
                          const SizedBox(width: 7),
                          Text(
                            singer[index].description!,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.5),
                                fontFamily: FontBase.montserrat),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 2,
              right: 0,
              child: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff333333),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 12,
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
