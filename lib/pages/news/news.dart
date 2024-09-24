import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/news/parts/result_news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
      body: const ResultNewsPart(),
    );
  }
}
