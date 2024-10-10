import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/clear_product_price_button.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/price_input.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/save_product_price_filter_button.dart';

class ProductPriceFilterPage extends StatefulWidget {
  const ProductPriceFilterPage({super.key});

  @override
  State<ProductPriceFilterPage> createState() => _ProductPriceFilterPageState();
}

class _ProductPriceFilterPageState extends State<ProductPriceFilterPage> {
  final TextEditingController minPriceCtrl = TextEditingController();
  final TextEditingController maxPriceCtrl = TextEditingController();

  @override
  void dispose() {
    minPriceCtrl.dispose();
    maxPriceCtrl.dispose();
    super.dispose();
  }

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
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                PriceInput(
                  title: 'Min baha',
                  hintText: '1 man',
                  ctrl: minPriceCtrl,
                ),
                const SizedBox(width: 12),
                PriceInput(
                  title: 'Max baha',
                  hintText: '1000 man',
                  ctrl: maxPriceCtrl,
                ),
              ],
            ),
            SaveProductPriceFilterButton(
              minPriceCtrl: minPriceCtrl,
              maxPriceCtrl: maxPriceCtrl,
            ),
          ],
        ),
      ),
    );
  }
}
