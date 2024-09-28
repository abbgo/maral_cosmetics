import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_favorite_button.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({super.key});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductImageSlider(pageController: _pageController),
        const ProductFavoriteButton(top: 10, right: 10),
      ],
    );
  }
}
