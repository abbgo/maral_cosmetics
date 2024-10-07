import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';

class DiscountProductsGridview extends StatelessWidget {
  const DiscountProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: productCardHeight,
        ),
        itemBuilder: (context, index) => const ProductCardStatic(),
      ),
    );
  }
}
