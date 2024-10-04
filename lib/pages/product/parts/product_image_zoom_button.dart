import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/pages/product.dart';
import 'package:maral_cosmetics/models/image.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductImageZoomButton extends StatelessWidget {
  const ProductImageZoomButton({super.key, required this.images});

  final List<BlurImage> images;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: GestureDetector(
        onTap: () => showProductImages(context, images),
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
