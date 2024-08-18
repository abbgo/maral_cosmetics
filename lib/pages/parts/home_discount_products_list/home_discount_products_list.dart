import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_products_body.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';

class HomeDiscountProductsList extends StatelessWidget {
  const HomeDiscountProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeNewBrendsSliderTitle(text: 'Arzanladyslar'),
          HomeDiscountProductsBody(),
        ],
      ),
    );
  }
}
