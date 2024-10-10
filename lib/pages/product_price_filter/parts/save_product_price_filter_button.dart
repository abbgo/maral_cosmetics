import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/product_sort_and_filter.dart';

class SaveProductPriceFilterButton extends ConsumerWidget {
  const SaveProductPriceFilterButton({
    super.key,
    required this.minPriceCtrl,
    required this.maxPriceCtrl,
  });

  final TextEditingController minPriceCtrl;
  final TextEditingController maxPriceCtrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff824D6A),
        ),
        onPressed: () async {
          ref.read(minPriceProvider.notifier).state = minPriceCtrl.text;
          ref.read(maxPriceProvider.notifier).state = maxPriceCtrl.text;
        },
        child: const Text(
          'OK',
          style: TextStyle(fontFamily: 'inter'),
        ),
      ),
    );
  }
}
