import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/news/news.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_main_image.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
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
          const HomeNewsMainImage(),
          // const HomeNewsList(),
        ],
      ),
    );
  }
}
