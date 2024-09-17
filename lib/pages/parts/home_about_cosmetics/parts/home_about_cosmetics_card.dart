import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/functions/converter.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/about_cosmetic.dart';

class HomeAboutCosmeticsCard extends StatelessWidget {
  const HomeAboutCosmeticsCard({
    super.key,
    required this.aboutCosmetic,
    required this.isFirst,
    required this.isLast,
  });

  final AboutCosmetic aboutCosmetic;
  final bool isLast, isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDFDF9),
      padding: const EdgeInsets.all(6),
      margin: EdgeInsets.only(left: isFirst ? 10 : 5, right: isLast ? 10 : 5),
      width: 310,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: SizedBox(
              width: 105,
              height: 105,
              child: BlurHash(
                errorBuilder: (context, error, stackTrace) => loadWidget,
                curve: Curves.easeOut,
                hash: aboutCosmetic.image.hashblur,
                image: '$pathUrl/${aboutCosmetic.image.url}',
                imageFit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  aboutCosmetic.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  removeHtmlTags(aboutCosmetic.content),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'HeyWowRegular',
                    fontSize: 10,
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
