import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/pages/parts/count_products.dart';
import 'package:maral_cosmetics/pages/parts/products_gridview.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';

class ResultProducts extends ConsumerWidget {
  const ResultProducts({super.key, this.categoryID, this.brandID});

  final String? categoryID, brandID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool loading = ref.watch(loadProductsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          const CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 70,
                flexibleSpace: CountProducts(),
              ),
              ProductsGridview(),
            ],
          ),
          loading ? loadWidget : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
