import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductsTitle extends StatelessWidget {
  const HomeDiscountProductsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 8),
      child: Text(
        'Bayramcylyk mynasybetli Arzanladyslar',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: defaultColor,
          fontFamily: 'Niconne',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
