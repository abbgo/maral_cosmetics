import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordIndicator extends StatelessWidget {
  const OnbordIndicator({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 2,
      effect: CustomizableEffect(
        dotDecoration: DotDecoration(
          borderRadius: BorderRadius.circular(40),
          width: 22,
          height: 4,
          color: defaultLightColor,
        ),
        activeDotDecoration: DotDecoration(
          borderRadius: BorderRadius.circular(40),
          width: 22,
          height: 4,
          color: defaultColor,
        ),
      ),
    );
  }
}
