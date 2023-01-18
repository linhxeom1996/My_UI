import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageWidget extends StatelessWidget {
  final String asset;
  final Color? color;
  final double? height;
  final double? width;
  final BoxFit? fit;
  const ImageWidget(
      {required this.asset,
      this.color,
      this.fit,
      this.height,
      this.width,
      super.key});

  @override
  Widget build(BuildContext context) {
    if (asset.contains('png')) {
      return Image.asset(asset,
          color: color, height: height, width: width, fit: fit);
    } else if (asset.contains('svg')) {
      return SvgPicture.asset(asset,
          color: color,
          width: width,
          fit: fit ?? BoxFit.contain,
          height: height);
    } else {
      return const Text("Error Image!");
    }
  }
}
