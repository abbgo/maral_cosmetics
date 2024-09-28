import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_favorite_button.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_zoom_button.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        ProductImageSlider(),
        ProductFavoriteButton(top: 10, right: 10),
        ProductImageZoomButton(),
      ],
    );
  }
}
