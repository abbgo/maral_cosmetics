import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeNewsShimmer extends StatelessWidget {
  const HomeNewsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.red,
      highlightColor: Colors.yellow,
      child: Container(
        color: Colors.black,
        height: 100,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
