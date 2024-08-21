import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_categories.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/title_and_timer_part.dart';

class DiscountProductsPage extends StatelessWidget {
  const DiscountProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Arzanladyslar'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            TitleAndTimerPart(),
            SizedBox(height: 30),
            DiscountProductsCategories(),
          ],
        ),
      ),
    );
  }
}
