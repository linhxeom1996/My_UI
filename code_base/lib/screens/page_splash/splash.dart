import 'dart:async';

import 'package:code_base/screens/routers/path_router.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/icons.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushReplacementNamed(context, PathScreen.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ImageWidget(
          asset: AppImage.splash_bg,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
