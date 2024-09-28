import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';

class ProductImageSliderAndList extends StatefulWidget {
  const ProductImageSliderAndList({super.key});

  @override
  State<ProductImageSliderAndList> createState() =>
      _ProductImageSliderAndListState();
}

class _ProductImageSliderAndListState extends State<ProductImageSliderAndList> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProductImageSlider(pageController: _pageController),
      ],
    );
  }
}
