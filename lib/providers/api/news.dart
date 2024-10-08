import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/providers/pages/news.dart';
import 'package:maral_cosmetics/services/api/news.dart';

final newsApiProvider = Provider<NewsApiService>((ref) => NewsApiService());

var fetchNewsProvider = FutureProvider.family<ResultNews, DefaultParams>(
  (ref, arg) async {
    ResultNews result = ResultNews.defaultResult();
    String lang = await ref.watch(langProvider);

    try {
      String search = await ref.watch(newsSearchProvider);

      ResultNews resultNews = await ref.read(newsApiProvider).fetchNews(
            page: arg.page!,
            pageSize: arg.pageSize!,
            search: search,
            lang: lang,
          );

      if (search != '') {
        ref.read(hasNewsProvider.notifier).state = resultNews.newss!.isNotEmpty;
      }

      result = resultNews;
    } catch (e) {
      result = ResultNews(error: e.toString());
    }

    ref.read(loadNewsProvider.notifier).state = false;
    return result;
  },
);
