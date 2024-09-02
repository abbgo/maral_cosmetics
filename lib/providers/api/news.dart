import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/services/api/news.dart';

final newsApiProvider = Provider<NewsApiService>((ref) => NewsApiService());

var fetchNewsProvider = FutureProvider.family<ResultNews, int>(
  (ref, arg) async {
    ResultNews result = ResultNews.defaultResult();

    try {
      String search = ref.watch(shopSearchProvider);

      List<NewsModel> newss =
          await ref.read(newsApiProvider).fetchNews(page: arg, search: search);

      // if (search != '') {
      //   ref.read(hasShopsProvider.notifier).state = shops.isNotEmpty;
      // }

      result = ResultNews(newss: newss, error: '');
    } catch (e) {
      result = ResultNews(error: e.toString());
    }

    return result;
  },
);
