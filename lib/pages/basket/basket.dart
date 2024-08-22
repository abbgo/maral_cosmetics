import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_product_count.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_products_list.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BasketProductCount(),
                SizedBox(height: 10),
                BasketProductsList(),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(color: Color(0xffF1E0E9)),
        ),
      ],
    );
  }
}
