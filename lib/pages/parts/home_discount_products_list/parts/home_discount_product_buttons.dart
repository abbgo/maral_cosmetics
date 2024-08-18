import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_button.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductButtons extends StatelessWidget {
  const HomeDiscountProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 16,
                color: Color(0xffFFBB00),
              ),
              const SizedBox(width: 2),
              Text(
                '3.0',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'HeyWowRegular',
                    color: defaultColor),
              ),
              const SizedBox(width: 10),
              const HomeDiscountProductButton(icon: Icons.favorite_outline),
            ],
          ),
          const HomeDiscountProductButton(icon: Icons.local_mall_outlined),
        ],
      ),
    );
  }
}
