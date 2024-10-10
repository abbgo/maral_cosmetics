import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/pages/products.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/products/parts/result_products.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';
import 'package:maral_cosmetics/providers/parts/product_sort_and_filter.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key, this.category, this.brand});

  final CategoryModel? category;
  final Brand? brand;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String title = '';
    bool? isLiked = ref.watch(isLikedProvider);

    if (category != null) {
      title = category!.name;
    } else if (brand != null) {
      title = brand!.name;
    } else if (isLiked != null && isLiked) {
      title = 'Foverim';
    }

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) {
          await ref.read(categoryIDsProvider.notifier).removeAll();
          await ref.read(brandIDsProvider.notifier).removeAll();
          return;
        }
      },
      child: Scaffold(
        appBar: productsPageAppBar(title, context),
        body: const ResultProducts(),
      ),
    );
  }
}
