import 'package:code_base/theme/colors.dart';
import 'package:flutter/material.dart';

class AppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String? title;
  final Color? colorTitle;
  final double? sizeTitle;
  final FontWeight? fontWeightTitle;
  final String? fontTitle;
  final Color? bgColor;
  final bool? centerTitle;
  final List<Widget>? actions;
  final double? elevation;
  final double? horizontal;
  const AppBarCommon(
      {this.leading,
      this.title = "",
      this.colorTitle,
      this.fontTitle,
      this.fontWeightTitle,
      this.sizeTitle,
      this.bgColor,
      this.centerTitle = true,
      this.actions,
      this.elevation = 4,
      this.horizontal,
      super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal ?? 0),
      child: AppBar(
        backgroundColor: bgColor ?? AppColor.mainColor,
        elevation: elevation,
        centerTitle: centerTitle,
        actions: actions,
        leading: leading,
        title: title != ""
            ? Text(
                title!,
                style: TextStyle(
                    color: colorTitle,
                    fontSize: sizeTitle,
                    fontWeight: fontWeightTitle,
                    fontFamily: fontTitle),
              )
            : const SizedBox(),
      ),
    );
  }
}
