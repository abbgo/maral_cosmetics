import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class DiscountProductsCategories extends StatelessWidget {
  const DiscountProductsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: discountProductCategories.length,
      itemBuilder: (context, index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeNewBrendsSliderTitle(
            text: discountProductCategories[index],
            onTap: () {},
          ),
        ],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
