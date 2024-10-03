import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';

class ProductsGridview extends ConsumerWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasData = ref.watch(hasProductsProvider);
    final bool loading = ref.watch(loadProductsProvider);

    return Stack(
      children: [
        !hasData
            ? const NoResult()
            : GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 275,
                ),
                itemBuilder: (context, index) =>
                    ProductCard(image: homeDiscountProducts.first),
              ),
        loading ? loadWidget : const SizedBox(),
      ],
    );
  }
}
