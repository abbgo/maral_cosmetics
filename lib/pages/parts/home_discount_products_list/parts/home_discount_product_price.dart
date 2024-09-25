import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductStartAndPrice extends StatelessWidget {
  const ProductStartAndPrice(
      {super.key, required this.fontSizePrice, required this.fontSizeOldPrice});

  final double fontSizePrice;
  final double fontSizeOldPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '500.00 man',
          style: TextStyle(
            fontSize: fontSizePrice,
            fontFamily: 'HeyWowRegular',
            color: defaultColor,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '500.00 man',
          style: TextStyle(
            fontSize: fontSizeOldPrice,
            fontFamily: 'HeyWowRegular',
          ),
        ),
      ],
    );
  }
}
