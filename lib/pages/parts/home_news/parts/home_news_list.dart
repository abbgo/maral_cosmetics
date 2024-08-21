import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_card.dart';

class HomeNewsList extends StatelessWidget {
  const HomeNewsList({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) => HomeNewsCard(image: images[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
      ),
    );
  }
}
