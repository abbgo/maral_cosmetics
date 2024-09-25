import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/pages/one_news/parts/one_news_content.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';

class OneNewsPage extends StatelessWidget {
  const OneNewsPage({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habarlar'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Divider(
            thickness: 4,
            color: Color(0xffF5F5F5),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          shrinkWrap: true,
          children: [
            OneNewsContent(news: news),
            const HomeAboutCosmetics(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
