import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_app_bar_bottom.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_gridview.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/title_and_timer_part.dart';

class DiscountProductsPage extends StatelessWidget {
  const DiscountProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arzanladyslar'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: DIscountPageAppBarBottom(),
        ),
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
