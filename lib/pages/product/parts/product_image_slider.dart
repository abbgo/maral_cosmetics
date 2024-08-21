import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.maxFinite,
      child: Stack(
        alignment: const Alignment(0, 0.9),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: PageView.builder(
              controller: pageController,
              pageSnapping: true,
              itemCount: homeSliders.length,
              itemBuilder: (context, index) =>
                  Image.asset(productSliders[index], fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SmoothPageIndicator(
              controller: pageController,
              count: homeSliders.length,
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
