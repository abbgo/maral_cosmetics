import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/image.dart';

class CategoryCardImage extends StatelessWidget {
  const CategoryCardImage({super.key, required this.image});

  final BlurImage image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: BlurHash(
          errorBuilder: (context, error, stackTrace) => loadWidget,
          curve: Curves.easeOut,
          hash: image.hashblur,
          image: '$pathUrl/${image.url}',
          imageFit: BoxFit.cover,
        ),
      ),
    );
  }
}
