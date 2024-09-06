import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/new_brends/new_brends.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_body.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';

class HomeNewBrendsSlider extends StatelessWidget {
  const HomeNewBrendsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeTitle(
          text: 'In taze gosulanlar',
          onTap: () => Navigator.push(
            context,
            CustomPageRoute(
              child: const NewBrendsPage(),
              direction: AxisDirection.left,
            ),
          ),
        ),
        const HomeNewBrendsSliderBody(),
      ],
    );
  }
}
