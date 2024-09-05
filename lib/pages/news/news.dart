import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/news/parts/result_news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Habarlar'),
      ),
      body: const ResultNewsPart(),
    );
  }
}
