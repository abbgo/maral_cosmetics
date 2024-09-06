import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_products.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';

class DiscountProductsCategories extends StatelessWidget {
  const DiscountProductsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: discountProductCategories.length,
      itemBuilder: (context, index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeTitle(
            text: discountProductCategories[index],
            onTap: () {},
          ),
          const HomeDiscountProducts(),
        ],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
