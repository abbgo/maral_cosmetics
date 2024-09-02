import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/providers/pages/news.dart';
import 'package:maral_cosmetics/services/api/news.dart';

final newsApiProvider = Provider<NewsApiService>((ref) => NewsApiService());

var fetchNewsProvider = FutureProvider.autoDispose.family<ResultNews, int>(
  (ref, arg) async {
    ref.read(loadNewsProvider.notifier).state = true;
    ResultNews result = ResultNews.defaultResult();

    try {
      String search = await ref.watch(newsSearchProvider);

      List<NewsModel> newss =
          await ref.read(newsApiProvider).fetchNews(page: arg, search: search);

      if (search != '') {
        ref.read(hasNewsProvider.notifier).state = newss.isNotEmpty;
      }

      result = ResultNews(newss: newss, error: '');
    } catch (e) {
      result = ResultNews(error: e.toString());
    }

    ref.read(loadNewsProvider.notifier).state = false;
    return result;
  },
);
