import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/clear_product_price_button.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/price_input.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                PriceInput(title: 'Min baha', hintText: '1 man'),
                SizedBox(width: 12),
                PriceInput(title: 'Max baha', hintText: '1000 man'),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff824D6A),
                ),
                onPressed: () {},
                child: const Text(
                  'OK',
                  style: TextStyle(fontFamily: 'inter'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
