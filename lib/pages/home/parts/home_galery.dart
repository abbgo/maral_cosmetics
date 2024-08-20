import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeGalery extends StatelessWidget {
  const HomeGalery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeNewBrendsSliderTitle(text: 'Gallereya toplumy', onTap: () {}),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: homeGaleries.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 10 : 0,
                right: index == homeGaleries.length - 1 ? 10 : 0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(
                  homeGaleries[index],
                  width: 140,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
