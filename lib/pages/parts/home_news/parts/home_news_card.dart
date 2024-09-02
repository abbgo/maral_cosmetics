import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';
import 'package:maral_cosmetics/pages/one_news/one_news.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    print('------------ ${'$pathUrl/${news.image.url}'}');
    print('------------ ${news.image.hashblur}');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 100,
        child: BlurHash(
          decodingHeight: 100,
          onDecoded: () => CircularProgressIndicator(),
          onStarted: () => CircularProgressIndicator(),
          onReady: () => CircularProgressIndicator(),
          onDisplayed: () => CircularProgressIndicator(),
          hash: news.image.hashblur,
          image: '$pathUrl/${news.image.url}',
          imageFit: BoxFit.cover,
        ),
      ),
    );
  }
}
