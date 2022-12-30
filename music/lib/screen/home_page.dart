import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:music/extension/color_extend.dart';
import 'package:music/extension/font_extend.dart';
import 'package:music/widgets/behavior.dart';

import '../models/info_album.dart';
import '../models/info_singer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double horiScreen = 20;

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.only(left: horiScreen, bottom: 20),
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
            _listSinger(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: horiScreen, vertical: 20),
              child: Text(
                "discover".tr(),
                style: const TextStyle(
                    color: ColorBase.blackColor,
                    fontSize: 25,
                    fontFamily: FontBase.montserrat),
              ),
            ),
            _listAlbum(),
          ],
        ),
      ),
    );
  }

  Widget _listSinger() {
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

    return SizedBox(
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

  Widget _listAlbum() {
    List<InfoAlbum> listAlbum = [
      InfoAlbum(
          image: "assets/images/home_img_album_1.png",
          name: "Out Of My Mine",
          type: "Dance"),
      InfoAlbum(
          image: "assets/images/home_img_album_2.png",
          name: "Freak In Me",
          type: "Electronic"),
      InfoAlbum(
          image: "assets/images/home_img_album_2.png",
          name: "Freak In Me",
          type: "Electronic"),
      InfoAlbum(
          image: "assets/images/home_img_album_2.png",
          name: "Freak In Me",
          type: "Electronic"),
    ];

    return SizedBox(
      width: double.infinity,
      height: 140,
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? horiScreen : 0,
                right: index == 3 ? horiScreen : 15),
            child: Container(
                width: 140,
                height: 140,
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.fromLTRB(10, 90, 10, 0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                      image: AssetImage(listAlbum[index].image)),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  decoration: BoxDecoration(
                      color: const Color(0xffB7B3B3).withOpacity(0.9),
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        listAlbum[index].name,
                        style: const TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        listAlbum[index].type,
                        style: TextStyle(
                            color: const Color(0xffFFFFFF).withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
