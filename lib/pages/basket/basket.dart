import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_product_count.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_products_list.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BasketProductCount(),
          BasketProductsList(),
        ],
      ),
    );
  }
}
