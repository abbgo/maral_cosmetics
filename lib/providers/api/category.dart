import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/services/api/category.dart';

final categoryApiProvider =
    Provider<CategoryApiService>((ref) => CategoryApiService());

var fetchCategoriesProvider =
    FutureProvider.family<ResultCategory, DefaultParams>(
  (ref, arg) async {
    ResultCategory result = ResultCategory.defaultResult();

    try {
      String search = await ref.watch(brandSearchProvider);

      ResultCategory resultBrands =
          await ref.read(categoryApiProvider).fetchCategories(
                page: arg.page!,
                pageSize: arg.pageSize!,
                search: search,
              );

      if (search != '') {
        ref.read(hasBrandsProvider.notifier).state =
            resultBrands.brands!.isNotEmpty;
      }

      result = resultBrands;
    } catch (e) {
      result = ResultCategory(error: e.toString());
    }

    ref.read(loadBrandProvider.notifier).state = false;
    return result;
  },
);
