import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/providers/pages/product.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.maxFinite,
      child: Stack(
        alignment: const Alignment(0, 0.9),
        children: [
          Consumer(
            builder: (context, ref, child) => ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: PageView.builder(
                onPageChanged: (value) {
                  ref.read(selectedProductImageProvider.notifier).state = value;
                },
                controller: _pageController,
                pageSnapping: true,
                itemCount: productSliders.length,
                itemBuilder: (context, index) =>
                    Image.asset(productSliders[index], fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: productSliders.length,
              effect: WormEffect(
                dotColor: Colors.white,
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: defaultColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
