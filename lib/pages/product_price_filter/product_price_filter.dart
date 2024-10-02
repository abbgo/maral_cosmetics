import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';

class ProductPriceFilterPage extends StatelessWidget {
  const ProductPriceFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Baha',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: appBarBottomMethod(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [],
        ),
      ),
    );
  }
}
