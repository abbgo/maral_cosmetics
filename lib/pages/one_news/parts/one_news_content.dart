import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/functions/converter.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';

class OneNewsContent extends StatelessWidget {
  const OneNewsContent({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF8F8F8),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: BlurHash(
                errorBuilder: (context, error, stackTrace) => loadWidget,
                curve: Curves.easeOut,
                hash: news.image.hashblur,
                image: '$pathUrl/${news.image.url}',
                imageFit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(news.title),
          ),
          Text(
            removeHtmlTags(news.content),
            style: const TextStyle(fontFamily: 'HeyWowRegular'),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 10),
          Text(
            formatDate(news.createdAt),
            style: const TextStyle(
              fontFamily: 'HeyWowRegular',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
