import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/clear_product_price_button.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/price_input.dart';
import 'package:maral_cosmetics/pages/product_price_filter/parts/save_product_price_filter_button.dart';
import 'package:maral_cosmetics/providers/parts/product_sort_and_filter.dart';

class ProductPriceFilterPage extends ConsumerStatefulWidget {
  const ProductPriceFilterPage({super.key});

  @override
  ConsumerState<ProductPriceFilterPage> createState() =>
      _ProductPriceFilterPageState();
}

class _ProductPriceFilterPageState
    extends ConsumerState<ProductPriceFilterPage> {
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
    String? minPrice = ref.watch(minPriceProvider);
    String? maxPrice = ref.watch(maxPriceProvider);
    minPriceCtrl.text = minPrice ?? '';
    maxPriceCtrl.text = maxPrice ?? '';

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
          ClearProductPriceButton(
            minPriceCtrl: minPriceCtrl,
            maxPriceCtrl: maxPriceCtrl,
          )
        ],
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
