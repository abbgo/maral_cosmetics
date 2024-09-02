import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/news/parts/result_news.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';

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
            child: const ResultNewsPart(),
          ),
          const SizedBox(height: 20),
          const HomeAboutCosmetics(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
