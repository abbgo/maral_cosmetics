import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';
import 'package:maral_cosmetics/providers/parts/product_sort_and_filter.dart';
import 'package:maral_cosmetics/services/api/product.dart';

final productApiProvider =
    Provider<ProductApiService>((ref) => ProductApiService());

var fetchProductsProvider = FutureProvider.family<ResultProduct, DefaultParams>(
  (ref, arg) async {
    ResultProduct result = ResultProduct.defaultResult();

    try {
      String lang = await ref.watch(langProvider);
      String search = await ref.watch(productSearchProvider);
      List<String> categoryIDs = await ref.watch(categoryIDsProvider);
      List<String> brandIDs = await ref.watch(brandIDsProvider);
      String sortProduct = await ref.watch(sortProductProvider);

      ProductParams productParams = ProductParams(
        categories: categoryIDs,
        brands: brandIDs,
        ordering: sortProduct,
        search: search,
        page: arg.page!,
        pageSize: arg.pageSize!,
        lang: lang,
      );

      ResultProduct resultProducts = await ref
          .read(productApiProvider)
          .fetchProducts(productParams: productParams);

      if (search != '') {
        ref.read(hasProductsProvider.notifier).state =
            resultProducts.products!.isNotEmpty;
      }

      result = resultProducts;
    } catch (e) {
      result = ResultProduct(error: e.toString());
    }

    ref.read(loadProductsProvider.notifier).state = false;
    return result;
  },
);
