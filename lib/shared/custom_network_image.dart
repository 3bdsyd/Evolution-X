// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:your_reservation/shared/custom_shimmer.dart';

// class CustomNetworkImage extends StatelessWidget {
//   final String imageUrl;
//   final double? height;
//   final double? width;
//   final double? radius;

//   const CustomNetworkImage({
//     super.key,
//     required this.imageUrl,
//     this.height,
//     this.width,
//     this.radius,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(radius ?? 0),
//       child: CachedNetworkImage(
//         imageUrl: imageUrl,
//         placeholder: (context, url) => const CustomShimmer(),
//         errorWidget: (context, url, error) => const Icon(Icons.error),
//         fadeInDuration: const Duration(seconds: 1),
//         fadeOutDuration: const Duration(seconds: 1),
//         height: height ?? double.infinity,
//         width: width ?? double.infinity,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }
