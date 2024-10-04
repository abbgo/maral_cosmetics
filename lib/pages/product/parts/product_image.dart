import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_favorite_button.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_zoom_button.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductImageSlider(images: product.images),
        const ProductFavoriteButton(top: 10, right: 10),
        ProductImageZoomButton(images: product.images),
      ],
    );
  }
}
