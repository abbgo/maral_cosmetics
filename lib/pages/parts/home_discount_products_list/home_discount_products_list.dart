import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/discount_products/discount_products.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_products_body.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';

class HomeDiscountProductsList extends StatelessWidget {
  const HomeDiscountProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeTitle(
            text: 'Arzanladyslar',
            onTap: () => Navigator.push(
              context,
              CustomPageRoute(
                child: const DiscountProductsPage(),
                direction: AxisDirection.left,
              ),
            ),
          ),
          const HomeDiscountProductsBody(),
        ],
      ),
    );
  }
}
