import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_card.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/providers/api/news.dart';
import 'package:maral_cosmetics/providers/pages/news.dart';

class ResultNewsPart extends ConsumerWidget {
  const ResultNewsPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool hasNews = ref.watch(hasNewsProvider);
    final bool loading = ref.watch(loadNewsProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Stack(
        children: [
          !hasNews
              ? const NoResult()
              : ListView.builder(
                  itemBuilder: (context, index) {
                    final page = index ~/ pageSize + 1;
                    final indexInPage = index % pageSize;

                    DefaultParams arg =
                        DefaultParams(page: page, pageSize: pageSize);

                    final AsyncValue<ResultNews> resultNews =
                        ref.watch(fetchNewsProvider(arg));

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

                        bool showLast = page == response.pageCount &&
                            (indexInPage + 1) == response.newss!.length;

                        NewsModel news = response.newss![indexInPage];
                        return showLast
                            ? Column(
                                children: [
                                  HomeNewsCard(news: news),
                                  const SizedBox(height: 20),
                                  const HomeAboutCosmetics(),
                                  const SizedBox(height: 20),
                                ],
                              )
                            : HomeNewsCard(news: news);
                      },
                      error: (error, stackTrace) => errorMethod(error),
                      loading: () {
                        if (!loading) {
                          Future.delayed(
                            const Duration(),
                            () => ref.read(loadNewsProvider.notifier).state =
                                true,
                          );
                        }
                        return null;
                      },
                    );
                  },
                ),
          loading ? loadWidget : const SizedBox(),
        ],
      ),
    );
  }
}
