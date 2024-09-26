import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_gridview.dart';
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TitleAndTimerPart(),
            SizedBox(height: 30),
            DiscountProductsGridview(),
          ],
        ),
      ),
    );
  }
}
