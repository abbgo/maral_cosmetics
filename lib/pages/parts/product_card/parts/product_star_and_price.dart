import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_prices.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star.dart';

class ProductStarAndPrice extends StatelessWidget {
  const ProductStarAndPrice({
    super.key,
    required this.fontSizePrice,
    required this.fontSizeOldPrice,
    required this.product,
  });

  final double fontSizePrice;
  final double fontSizeOldPrice;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ProductStar(starSize: 14, textSize: 12),
        ProductPrices(
          fontSizePrice: fontSizePrice,
          fontSizeOldPrice: fontSizeOldPrice,
        ),
      ],
    );
  }
}
