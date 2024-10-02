import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/trash.png',
              color: Colors.red,
              height: 24,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            PriceInput(title: 'Min baha', hintText: '1 man'),
            SizedBox(width: 12),
            PriceInput(title: 'Max baha', hintText: '1000 man'),
          ],
        ),
      ),
    );
  }
}
