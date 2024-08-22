import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class BasketProductCount extends StatelessWidget {
  const BasketProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sebetde jemi (3) haryt bar',
      style: TextStyle(
        fontFamily: 'HeyWowRegular',
        color: defaultColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
