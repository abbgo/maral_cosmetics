import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_card.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/providers/api/news.dart';
import 'package:maral_cosmetics/providers/pages/news.dart';

class HomeNewsList extends ConsumerWidget {
  const HomeNewsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasNews = ref.watch(hasNewsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: !hasNews
          ? const NoResult()
          : ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final page = index ~/ pageSize + 1;
                final indexInPage = index % pageSize;

                final AsyncValue<ResultNews> resultNews =
                    ref.watch(fetchNewsProvider(page));

                return resultNews.when(
                  skipLoadingOnRefresh: true,
                  skipLoadingOnReload: true,
                  skipError: true,
                  data: (response) {
                    if (response.error != '') {
                      return null;
                    }
                    if (indexInPage >= response.newss!.length) {
                      return null;
                    }

                    NewsModel news = response.newss![indexInPage];
                    return HomeNewsCard(news: news);
                  },
                  error: (error, stackTrace) => errorMethod(error),
                  loading: () => null,
                );
              },
            ),
    );
  }
}
