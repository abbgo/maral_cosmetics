import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/about_cosmetic.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/providers/pages/about_cosmetics.dart';
import 'package:maral_cosmetics/services/api/about_cosmetic.dart';

final aboutCosmeticApiProvider =
    Provider<AboutCosmeticApiService>((ref) => AboutCosmeticApiService());

var fetchAboutCosmeticsProvider =
    FutureProvider.family<ResultAboutCosmetic, DefaultParams>(
  (ref, arg) async {
    ResultAboutCosmetic result = ResultAboutCosmetic.defaultResult();
    String lang = await ref.watch(langProvider);

    try {
      String search = await ref.watch(aboutCosmeticsSearchProvider);

      ResultAboutCosmetic resultAboutCosmetic =
          await ref.read(aboutCosmeticApiProvider).fetcAboutCosmetics(
                page: arg.page!,
                pageSize: arg.pageSize!,
                search: search,
                lang: lang,
              );

      if (search != '') {
        ref.read(hasAboutCosmeticsProvider.notifier).state =
            resultAboutCosmetic.aboutCosmetics!.isNotEmpty;
      }

      result = resultAboutCosmetic;
    } catch (e) {
      result = ResultAboutCosmetic(error: e.toString());
    }

    ref.read(loadAboutCosmeticsProvider.notifier).state = false;
    return result;
  },
);
