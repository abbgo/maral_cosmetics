import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_card.dart';

class HomeNewsList extends StatelessWidget {
  const HomeNewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: homeNews.length,
        itemBuilder: (context, index) => HomeNewsCard(image: homeNews[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
      ),
    );
  }
}
