import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/news/parts/result_news.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habarlar'),
        bottom: appBarBottomMethod(),
      ),
      body: const ResultNewsPart(),
    );
  }
}
