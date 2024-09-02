import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/news.dart';

final newsApiProvider = Provider<NewsApiService>((ref) => NewsApiService());

var fetchNewsProvider = FutureProvider.family<ResultShop, ShopParams>(
  (ref, shopParams) async {
    ResultShop result = ResultShop.defaultResult();

    try {
      String search = ref.watch(shopSearchProvider);
      bool isTM = ref.read(langProvider) == 'tr';

      List<Shop> shops = await ref.read(apiProvider).fetchShops(
            page: shopParams.page!,
            isRandom: shopParams.isRandom!,
            search: search,
            lang: isTM ? 'tm' : 'ru',
            parentShopID: '',
            isShoppingCenter: true,
          );

      if (search != '') {
        ref.read(hasShopsProvider.notifier).state = shops.isNotEmpty;
      }

      result = ResultShop(shops: shops, error: '');
    } catch (e) {
      result = ResultShop(error: e.toString());
    }

    return result;
  },
);
