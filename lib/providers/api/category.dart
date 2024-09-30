import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/providers/pages/categories.dart';
import 'package:maral_cosmetics/services/api/category.dart';

final categoryApiProvider =
    Provider<CategoryApiService>((ref) => CategoryApiService());

var fetchCategoriesProvider =
    FutureProvider.family<ResultCategory, DefaultParams>(
  (ref, arg) async {
    ResultCategory result = ResultCategory.defaultResult();

    try {
      String search = await ref.watch(categorySearchProvider);

      ResultCategory resultBrands =
          await ref.read(categoryApiProvider).fetchCategories(
                page: arg.page!,
                pageSize: arg.pageSize!,
                search: search,
              );

      if (search != '') {
        ref.read(hasCategoriesProvider.notifier).state =
            resultBrands.categories!.isNotEmpty;
      }

      result = resultBrands;
    } catch (e) {
      result = ResultCategory(error: e.toString());
    }

    ref.read(loadCategoryProvider.notifier).state = false;
    return result;
  },
);
