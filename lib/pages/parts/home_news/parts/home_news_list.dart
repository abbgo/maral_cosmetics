import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/pages/parts/home_news/parts/home_news_card.dart';

class HomeNewsList extends ConsumerWidget {
  const HomeNewsList({super.key, required this.newss});

  final List<NewsModel> newss;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => HomeNewsCard(news: newss[index]),
      ),
    );
  }
}
