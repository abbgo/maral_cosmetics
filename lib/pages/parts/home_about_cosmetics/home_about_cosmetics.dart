import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/parts/home_about_cosmetics_list.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeAboutCosmetics extends StatelessWidget {
  const HomeAboutCosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeNewBrendsSliderTitle(text: 'Kosmetika barada', onTap: () {}),
        const HomeAboutCosmeticsList(),
      ],
    );
  }
}
