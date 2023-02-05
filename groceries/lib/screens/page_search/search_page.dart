import 'package:code_base/screens/widgets/app_bar_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../theme/icons.dart';
import '../widgets/image_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            AppBarCommon(title: "find_products".tr(), divider: false),
          ],
        ),
      ),
    );
  }

  Widget searchWidget() {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon:
            ImageWidget(asset: AppImage.home_ic_search, width: 17, height: 17),
      ),
    );
  }
}
