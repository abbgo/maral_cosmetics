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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
          ],
        ),
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
