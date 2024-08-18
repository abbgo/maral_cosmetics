import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductPrice extends StatelessWidget {
  const HomeDiscountProductPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '500.00 man',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'HeyWowRegular',
            color: defaultColor,
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          '500.00 man',
          style: TextStyle(
            fontSize: 8,
            fontFamily: 'HeyWowRegular',
          ),
        ),
      ],
    );
  }
}
