import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductButton extends StatelessWidget {
  const HomeDiscountProductButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: defaultLightColor,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Icon(icon, size: 16, color: defaultColor),
      ),
    );
  }
}
