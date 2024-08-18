import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products/parts/home_discount_products_body.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeDiscountProducts extends StatelessWidget {
  const HomeDiscountProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeNewBrendsSliderTitle(text: 'Arzanladyslar'),
        HomeDiscountProductsBody(),
      ],
    );
  }
}
