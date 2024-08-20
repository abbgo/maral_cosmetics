import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeBrends extends StatelessWidget {
  const HomeBrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const HomeNewBrendsSliderTitle(text: 'Hyzmatdas brendler'),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: homeBrends.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(homeBrends[index], width: 100, height: 80),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
