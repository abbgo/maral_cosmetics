import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';

class HomeDiscountProducts extends StatelessWidget {
  const HomeDiscountProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductCard(
            image: homeDiscountProducts[index],
            isFisrt: index == 0,
            isLast: index == homeDiscountProducts.length - 1,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: homeDiscountProducts.length,
      ),
    );
  }
}
