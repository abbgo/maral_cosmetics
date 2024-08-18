import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeNewBrendsSliderTitle(text: 'Habarlar'),
      ],
    );
  }
}
