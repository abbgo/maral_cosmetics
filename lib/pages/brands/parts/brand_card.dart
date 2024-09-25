import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/brand.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.brand});

  final Brand brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 140,
          // width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: BlurHash(
              errorBuilder: (context, error, stackTrace) => loadWidget,
              curve: Curves.easeOut,
              hash: brand.logo.hashblur,
              image: '$pathUrl/${brand.logo.url}',
              imageFit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          brand.name,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: 'HeyWowRegular',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
