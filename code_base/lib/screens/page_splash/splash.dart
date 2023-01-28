import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/theme/icons.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ImageWidget(asset: AppImage.splash_bg),
    );
  }
}
