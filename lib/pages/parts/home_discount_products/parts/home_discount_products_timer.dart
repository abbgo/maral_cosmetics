import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductsTimer extends StatelessWidget {
  const HomeDiscountProductsTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
        color: defaultColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        '00 : 14 : 20',
        style: TextStyle(color: defaultColor, fontSize: 24),
      ),
    );
  }
}
