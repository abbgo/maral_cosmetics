import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_bottom_part.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_product_count.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_products_list.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
        BasketBottomPart(),
      ],
    );
  }
}
