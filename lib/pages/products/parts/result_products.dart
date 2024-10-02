import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/pages/parts/count_products.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/pages/parts/products_gridview.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';

class ResultProducts extends ConsumerWidget {
  const ResultProducts({super.key, this.categoryID, this.brandID});

  final String? categoryID, brandID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasData = ref.watch(hasProductsProvider);
    final bool loading = ref.watch(loadProductsProvider);

    return Stack(
      children: [
        !hasData
            ? const NoResult()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: const [
                    CountProducts(),
                    ProductsGridview(),
                  ],
                ),
              ),
        loading ? loadWidget : const SizedBox(),
      ],
    );
  }
}
