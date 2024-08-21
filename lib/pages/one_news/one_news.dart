import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/one_news/parts/one_news_content.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';

class OneNewsPage extends StatelessWidget {
  const OneNewsPage({super.key, required this.image});

  final String image;

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
          OneNewsContent(image: image),
          const HomeAboutCosmetics(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
