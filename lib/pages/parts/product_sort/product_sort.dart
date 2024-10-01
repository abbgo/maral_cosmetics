import 'package:flutter/material.dart';

class ProductSort extends StatelessWidget {
  const ProductSort({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Wrap(),
    );
  }
}
