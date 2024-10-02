import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/product_filter/parts/product_filter_button.dart';

class ProductFilterPage extends StatelessWidget {
  const ProductFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filter',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: appBarBottomMethod(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ProductFilterButton(text: 'Harydyň görnüşi', onTap: () {}),
            ProductFilterButton(text: 'Brend', onTap: () {}),
            ProductFilterButton(text: 'Bahasy', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
