import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/product_image.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_favorite_button.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key, required this.image});

  // final BlurImage image;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(image, fit: BoxFit.cover, height: 140),
          // child: SizedBox(
          //   height: 140,
          //   child: BlurHash(
          //     errorBuilder: (context, error, stackTrace) => loadWidget,
          //     curve: Curves.easeOut,
          //     hash: image.hashblur,
          //     image: '$pathUrl/${image.url}',
          //     imageFit: BoxFit.cover,
          //   ),
          // ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Row(
            children: [
              imageIconMethod('54%', Colors.red, 12),
              const SizedBox(width: 2),
              imageIconMethod('Taze', Colors.green, 12),
            ],
          ),
        ),
        const ProductFavoriteButton(top: 5, right: 5),
      ],
    );
  }
}
