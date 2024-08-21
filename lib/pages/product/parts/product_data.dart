import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_price.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
          style: TextStyle(
            fontFamily: 'HeyWowRegular',
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            HomeDiscountProductPrice(
              fontSizePrice: 16,
              fontSizeOldPrice: 12,
            ),
          ],
        ),
      ],
    );
  }
}
