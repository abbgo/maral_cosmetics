import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_products.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_products_timer.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_products_title.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductsBody extends StatelessWidget {
  const HomeDiscountProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      decoration: BoxDecoration(
        color: defaultLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeDiscountProductsTitle(),
          HomeDiscountProductsTimer(),
          HomeDiscountProducts(),
        ],
      ),
    );
  }
}
