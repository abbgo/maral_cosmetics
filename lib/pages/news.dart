import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_list.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Habarlar'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: const Color(0xffF8F8F8),
            child: HomeNewsList(images: news),
          ),
          const SizedBox(height: 20),
          const HomeAboutCosmetics(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
