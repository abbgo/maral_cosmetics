import 'package:flutter/material.dart';

class ProductStar extends StatelessWidget {
  const ProductStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          size: 14,
          color: Color(0xffFFBB00),
        ),
        const SizedBox(width: 2),
        Text(
          '3.0',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'HeyWowRegular',
            color: defaultColor,
          ),
        ),
      ],
    );
  }
}
