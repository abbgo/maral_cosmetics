import 'package:flutter/material.dart';

class HomeDiscountProductsTimer extends StatelessWidget {
  const HomeDiscountProductsTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color(0xffA16F8A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text('00 : 14 : 20'),
    );
  }
}
