import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductPrices extends StatelessWidget {
  const ProductPrices({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${product.price} man',
          style: TextStyle(
            fontSize: fontSizePrice,
            fontFamily: 'HeyWowRegular',
            color: defaultColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '500.00 man',
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontSize: fontSizeOldPrice,
            fontFamily: 'HeyWowRegular',
            color: const Color(0xffACACAC),
          ),
        ),
      ],
    );
  }
}
