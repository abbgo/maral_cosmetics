import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_prices.dart';

class ProductPriceAndOrderButton extends StatelessWidget {
  const ProductPriceAndOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffF8F8F8),
      ),
      child: const Row(
        children: [
          ProductPrices(fontSizePrice: 20, fontSizeOldPrice: 16),
        ],
      ),
    );
  }
}
