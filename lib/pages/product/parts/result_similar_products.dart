import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';
import 'package:maral_cosmetics/providers/api/product.dart';

class ResultSimilarProducts extends ConsumerWidget {
  const ResultSimilarProducts({super.key, required this.productID});

  final String productID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<ResultProduct> resultProduct =
        ref.watch(fetchSimilarProductsProvider(productID));

    return resultProduct.when(
      data: (response) {
        if (response.error != '') {
          return const SizedBox.shrink();
        }

        return Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: response.products!.length,
            itemBuilder: (context, index) =>
                ProductCard(product: response.products![index]),
          ),
        );
      },
      error: (error, stackTrace) => errorMethod(error),
      loading: () => loadWidget,
    );
  }
}
