import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/providers/pages/brands.dart';
import 'package:maral_cosmetics/services/api/brand.dart';

final brandApiProvider = Provider<BrandApiService>((ref) => BrandApiService());

var fetchBrandsProvider =
    FutureProvider.autoDispose.family<ResultBrands, DefaultParams>(
  (ref, arg) async {
    ResultBrands result = ResultBrands.defaultResult();

    try {
      String search = await ref.watch(brandSearchProvider);

      ResultBrands resultBrands = await ref.read(brandApiProvider).fetchBrands(
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
      result = ResultBrands(error: e.toString());
    }

    ref.read(loadBrandProvider.notifier).state = false;
    return result;
  },
);
