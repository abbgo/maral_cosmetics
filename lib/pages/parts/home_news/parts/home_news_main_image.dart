import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/functions/converter.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';

class HomeNewsMainImage extends StatelessWidget {
  const HomeNewsMainImage({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Stack(
        alignment: const Alignment(-0.85, 0.85),
        children: [
          SizedBox(
            height: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BlurHash(
                errorBuilder: (context, error, stackTrace) => loadWidget,
                curve: Curves.easeOut,
                hash: news.image.hashblur,
                image: '$pathUrl/${news.image.url}',
                imageFit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 175,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  formatDate(news.createdAt),
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'HeyWowRegular',
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
