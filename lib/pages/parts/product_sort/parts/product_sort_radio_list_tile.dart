import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/product_sort_and_filter.dart';

class ProductSortRadioListTile extends ConsumerWidget {
  const ProductSortRadioListTile(
      {super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String sortProduct = ref.watch(sortProductProvider);
    return RadioListTile.adaptive(
      title: Text(title),
      value: value,
      groupValue: sortProduct,
      onChanged: (value) =>
          ref.read(sortProductProvider.notifier).state = value!,
    );
  }
}
