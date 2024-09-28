import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/product_image.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_order_button.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ProductPrices(fontSizePrice: 20, fontSizeOldPrice: 16),
              const SizedBox(width: 10),
              imageIconMethod('54%', Colors.red, 14),
            ],
          ),
          const ProductOrderButton(buttonWidth: 105, buttonHeight: 40),
        ],
      ),
    );
  }
}
