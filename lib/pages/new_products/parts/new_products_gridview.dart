import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';

class NewProductsGridview extends StatelessWidget {
  const NewProductsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 275,
        ),
        itemBuilder: (context, index) =>
            ProductCard(image: homeDiscountProducts.first),
      ),
    );
  }
}
