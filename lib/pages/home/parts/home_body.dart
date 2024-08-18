import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/home_new_brends_slider.dart';
import 'package:maral_cosmetics/pages/home/parts/home_slider.dart';
import 'package:maral_cosmetics/pages/parts/home_menus/home_menus.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: const [
          HomeMenus(),
          HomeSlider(),
          HomeNewBrendsSlider(),
        ],
      ),
    );
  }
}
