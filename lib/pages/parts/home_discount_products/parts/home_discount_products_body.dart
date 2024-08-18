import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductsBody extends StatelessWidget {
  const HomeDiscountProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      decoration: BoxDecoration(
        color: defaultLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
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
          ),
        ],
      ),
    );
  }
}
