import 'package:flutter/material.dart';

class HomeDiscountProductCard extends StatelessWidget {
  const HomeDiscountProductCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 200,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, fit: BoxFit.cover, height: 120),
          ),
        ],
      ),
    );
  }
}
