import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class CustomShimmer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;

  const CustomShimmer({super.key, this.height, this.width, this.radius});

  @override
  Widget build(BuildContext context) {
    return FadeShimmer(
      height: height ?? double.infinity,
      width: width ?? double.infinity,
      radius: radius ?? 12,
      highlightColor: const Color.fromARGB(255, 239, 239, 241),
      baseColor: const Color.fromARGB(255, 208, 210, 211),
    );
  }
}
