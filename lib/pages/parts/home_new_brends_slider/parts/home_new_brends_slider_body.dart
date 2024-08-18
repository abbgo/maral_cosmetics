import 'package:flutter/material.dart';
import 'package:maral_cosmetics/static_variables/static_variables.dart';

class HomeNewBrendsSliderBody extends StatelessWidget {
  const HomeNewBrendsSliderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            homeBrendSliders[index],
            width: 140,
            fit: BoxFit.cover,
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: homeBrendSliders.length,
      ),
    );
  }
}
