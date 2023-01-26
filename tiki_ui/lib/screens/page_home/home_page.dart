import 'dart:developer';

import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final ScrollController listViewController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SnappingSheet(
      lockOverflowDrag: true,
      snappingPositions: const [
        SnappingPosition.factor(
          snappingDuration: Duration(milliseconds: 1750),
          positionFactor: 0.42,
        ),
        SnappingPosition.factor(
          grabbingContentOffset: GrabbingContentOffset.bottom,
          snappingDuration: Duration(seconds: 1),
          positionFactor: 1,
        ),
      ],
      initialSnappingPosition:
          const SnappingPosition.factor(positionFactor: 0.42),
      grabbing: const GrabbingWidget(),
      grabbingHeight: 75,
      sheetAbove: null,
      sheetBelow: SnappingSheetContent(
        draggable: true,
        childScrollController: listViewController,
        child: Container(
          color: Colors.white,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              controller: listViewController,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(15),
                  color: Colors.green[200],
                  height: 100,
                  child: Center(
                    child: Text(index.toString()),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      child: const Background(),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      child: ImageWidget(
        asset: "assets/images/home_img_bg.jpeg",
        width: double.infinity,
        height: sizeScreen.height / 2,
        fit: BoxFit.cover,
      ),
    );
  }
}

class GrabbingWidget extends StatelessWidget {
  const GrabbingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeScreen = AppDimens().sizeScreen(context);

    return Container(
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                log("search");
              },
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: AppColor.black.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: Icon(
                        Icons.search,
                        color: AppColor.black54.withOpacity(0.4),
                        size: 25,
                      ),
                    ),
                    Text(
                      'find_today'.tr(),
                      style: TextStyle(
                          color: AppColor.black54.withOpacity(0.4),
                          fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: AppDimens.spacing20),
          GestureDetector(
            onTap: () {
              log("store");
            },
            child: const Icon(
              Icons.local_grocery_store_outlined,
              color: AppColor.blueAccent,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
