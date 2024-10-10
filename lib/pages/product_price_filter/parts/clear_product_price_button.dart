import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/product_sort_and_filter.dart';

class ClearProductPriceButton extends ConsumerWidget {
  const ClearProductPriceButton({
    super.key,
    required this.minPriceCtrl,
    required this.maxPriceCtrl,
  });

  final TextEditingController minPriceCtrl;
  final TextEditingController maxPriceCtrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        minPriceCtrl.clear();
        maxPriceCtrl.clear();
        ref.read(minPriceProvider.notifier).state = null;
        ref.read(maxPriceProvider.notifier).state = null;
      },
      icon: Image.asset(
        'assets/images/trash.png',
        color: Colors.red,
        height: 24,
      ),
    );
  }
}
