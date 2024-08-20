import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_body.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeNewBrendsSlider extends StatelessWidget {
  const HomeNewBrendsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeNewBrendsSliderTitle(text: 'In taze gosulanlar', onTap: () {}),
        const HomeNewBrendsSliderBody(),
      ],
    );
  }
}
