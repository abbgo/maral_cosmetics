import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF8F8F8),
      child: const Column(
        children: [
          HomeNewBrendsSliderTitle(text: 'Habarlar'),
        ],
      ),
    );
  }
}
