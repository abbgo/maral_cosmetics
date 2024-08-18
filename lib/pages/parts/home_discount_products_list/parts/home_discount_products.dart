import 'package:flutter/material.dart';

class HomeDiscountProducts extends StatelessWidget {
  const HomeDiscountProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Text('Haryt'),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 3,
      ),
    );
  }
}
