import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_list.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';

class ProductImageSliderAndList extends StatefulWidget {
  const ProductImageSliderAndList({super.key});

  @override
  State<ProductImageSliderAndList> createState() =>
      _ProductImageSliderAndListState();
}

class _ProductImageSliderAndListState extends State<ProductImageSliderAndList> {
  final PageController _pageController = PageController();
  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> menuKeys =
      List.generate(productSliders.length, (index) => GlobalKey());

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImageSlider(pageController: _pageController),
        ProductImageList(
          pageController: _pageController,
          scrollController: _scrollController,
          menuKeys: menuKeys,
        ),
      ],
    );
  }
}
