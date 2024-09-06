import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/models/default_param.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/pages/news/news.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_main_image.dart';
import 'package:maral_cosmetics/providers/api/news.dart';

class HomeNews extends ConsumerWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DefaultParams arg = const DefaultParams(page: 1, pageSize: 4);
    AsyncValue<ResultNews> resultNews = ref.watch(fetchNewsProvider(arg));

    return resultNews.when(
      data: (response) {
        if (response.error != '') {
          return errorMethod(response.error);
        }

        return Container(
          color: const Color(0xffF8F8F8),
          child: Column(
            children: [
              HomeTitle(
                text: 'Habarlar',
                onTap: () => Navigator.push(
                  context,
                  CustomPageRoute(
                    child: const NewsPage(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
              HomeNewsMainImage(news: response.newss!.first),
              // const HomeNewsList(),
            ],
          ),
        );
      },
      error: (error, stackTrace) => errorMethod(error),
      loading: () => loadWidget,
    );
  }
}
