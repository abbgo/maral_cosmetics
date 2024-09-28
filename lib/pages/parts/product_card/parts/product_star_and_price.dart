import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star.dart';
import 'package:maral_cosmetics/styles/colors.dart';

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '500.00 man',
              style: TextStyle(
                fontSize: fontSizePrice,
                fontFamily: 'HeyWowRegular',
                color: defaultColor,
              ),
            ),
            Text(
              '500.00 man',
              style: TextStyle(
                fontSize: fontSizeOldPrice,
                fontFamily: 'HeyWowRegular',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
