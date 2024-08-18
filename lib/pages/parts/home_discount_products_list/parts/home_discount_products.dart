import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_card.dart';

class HomeDiscountProducts extends StatelessWidget {
  const HomeDiscountProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            HomeDiscountProductCard(image: homeDiscountProducts[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: homeDiscountProducts.length,
      ),
    );
  }
}
