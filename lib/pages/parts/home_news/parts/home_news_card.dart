import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/functions/converter.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        // onTap: () => Navigator.push(
        //   context,
        //   CustomPageRoute(
        //     child: OneNewsPage(image: image),
        //     direction: AxisDirection.left,
        //   ),
        // ),
        child: SizedBox(
          height: 105,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 100,
                  width: 120,
                  child: BlurHash(
                    errorBuilder: (context, error, stackTrace) => loadWidget,
                    curve: Curves.easeOut,
                    hash: news.image.hashblur,
                    image: '$pathUrl/${news.image.url}',
                    imageFit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      removeHtmlTags(news.content),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'HeyWowRegular',
                        fontSize: 12,
                      ),
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
        ),
      ),
    );
  }
}
