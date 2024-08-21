import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_list.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';

class ProductImageSliderAndList extends StatelessWidget {
  const ProductImageSliderAndList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProductImageSlider(),
        ProductImageList(),
      ],
    );
  }
}
