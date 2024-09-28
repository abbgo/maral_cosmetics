import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductImageZoomButton extends StatelessWidget {
  const ProductImageZoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.white,
          ),
          child: Icon(
            Icons.crop_free,
            size: 18,
            color: defaultColor,
          ),
        ),
      ),
    );
  }
}
