import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class FavoriteProductCard extends StatelessWidget {
  const FavoriteProductCard({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: defaultLightColor.withOpacity(.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
