import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';
import 'package:maral_cosmetics/providers/api/product.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';

class ProductsGridview extends ConsumerWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasData = ref.watch(hasProductsProvider);
    final bool loading = ref.watch(loadProductsProvider);

    return !hasData
        ? const SliverFillRemaining(hasScrollBody: true, child: NoResult())
        : SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: productCardHeight,
            ),
            itemBuilder: (context, index) {
              final page = index ~/ pageSize + 1;
              final indexInPage = index % pageSize;

              DefaultParams arg = DefaultParams(page: page, pageSize: pageSize);

              AsyncValue<ResultProduct> resultProducts =
                  ref.watch(fetchProductsProvider(arg));

              return resultProducts.when(
                data: (response) {
                  if (response.error != '') {
                    return null;
                  }
                  if (indexInPage >= response.products!.length) {
                    return null;
                  }

                  Product product = response.products![indexInPage];
                  return ProductCard(product: product);
                },
                error: (error, stackTrace) => errorMethod(error),
                loading: () {
                  if (!loading) {
                    Future.delayed(
                      const Duration(),
                      () =>
                          ref.read(loadProductsProvider.notifier).state = true,
                    );
                  }
                  return null;
                },
              );
            },
          );
  }
}
