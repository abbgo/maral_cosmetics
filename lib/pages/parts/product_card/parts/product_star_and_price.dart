import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_prices.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star.dart';

class ProductStarAndPrice extends StatelessWidget {
  const ProductStarAndPrice(
      {super.key, required this.fontSizePrice, required this.fontSizeOldPrice});

  final double fontSizePrice;
  final double fontSizeOldPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ProductStar(),
        ProductPrices(
          fontSizePrice: fontSizePrice,
          fontSizeOldPrice: fontSizeOldPrice,
        ),
      ],
    );
  }
}
