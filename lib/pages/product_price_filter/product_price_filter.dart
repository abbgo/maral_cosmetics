import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/clear_product_price_button.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/price_input.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/save_product_price_filter_button.dart';

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
        actions: const [ClearProductPriceButton()],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                PriceInput(title: 'Min baha', hintText: '1 man'),
                SizedBox(width: 12),
                PriceInput(title: 'Max baha', hintText: '1000 man'),
              ],
            ),
            SaveProductPriceFilterButton(),
          ],
        ),
      ),
    );
  }
}
