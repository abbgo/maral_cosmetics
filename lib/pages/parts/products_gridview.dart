import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';

class ProductsGridview extends ConsumerWidget {
  const ProductsGridview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // bool hasData = ref.watch(hasProductsProvider);
    // final bool loading = ref.watch(loadProductsProvider);

    return GridView.builder(
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
    );

    // return Stack(
    //   children: [
    //     !hasData
    //         ? const NoResult()
    //         : GridView.builder(
    //             shrinkWrap: true,
    //             physics: const NeverScrollableScrollPhysics(),
    //             // itemCount: 8,
    //             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //               crossAxisCount: 2,
    //               crossAxisSpacing: 10,
    //               mainAxisSpacing: 10,
    //               mainAxisExtent: 275,
    //             ),
    //             itemBuilder: (context, index) {
    //               final page = index ~/ pageSize + 1;
    //               final indexInPage = index % pageSize;

    //               DefaultParams arg =
    //                   DefaultParams(page: page, pageSize: pageSize);

    //               AsyncValue<ResultProduct> resultProducts =
    //                   ref.watch(fetchProductsProvider(arg));

    //               return resultProducts.when(
    //                 data: (response) {
    //                   if (response.error != '') {
    //                     return null;
    //                   }
    //                   if (indexInPage >= response.products!.length) {
    //                     return null;
    //                   }

    //                   Product product = response.products![indexInPage];
    //                   return ProductCard(product: product);
    //                 },
    //                 error: (error, stackTrace) => errorMethod(error),
    //                 loading: () {
    //                   if (!loading) {
    //                     Future.delayed(
    //                       const Duration(),
    //                       () => ref.read(loadProductsProvider.notifier).state =
    //                           true,
    //                     );
    //                   }
    //                   return null;
    //                 },
    //               );
    //             },
    //           ),
    //     loading ? loadWidget : const SizedBox(),
    //   ],
    // );
  }
}
