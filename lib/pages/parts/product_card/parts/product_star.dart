import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductStar extends StatelessWidget {
  const ProductStar(
      {super.key, required this.textSize, required this.starSize});

  final double textSize, starSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: starSize,
          color: const Color(0xffFFBB00),
        ),
        const SizedBox(width: 2),
        Text(
          '3.0',
          style: TextStyle(
            fontSize: textSize,
            fontFamily: 'HeyWowRegular',
            color: defaultColor,
          ),
        ),
      ],
    );
  }
}
