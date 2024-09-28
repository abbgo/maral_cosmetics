import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductPrices extends StatelessWidget {
  const ProductPrices(
      {super.key, required this.fontSizePrice, required this.fontSizeOldPrice});

  final double fontSizePrice;
  final double fontSizeOldPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '500.00 man',
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
