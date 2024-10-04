import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter_buttons/product_sort_and_filter_buttons.dart';
import 'package:maral_cosmetics/pages/products/parts/result_products.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key, this.category, this.brand});

  final CategoryModel? category;
  final Brand? brand;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String title = '';

    if (category != null) {
      title = category!.name;
    } else if (brand != null) {
      title = brand!.name;
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
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: ProductSortAndFilterButtons(),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/search.png', height: 24),
            ),
          ],
        ),
        body: ResultProducts(categoryID: category?.id, brandID: brand?.id),
      ),
    );
  }
}
