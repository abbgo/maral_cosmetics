import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/brand.dart';

class BrandImage extends StatelessWidget {
  const BrandImage({
    super.key,
    required this.brand,
    required this.isLast,
    required this.isFirst,
  });

  final Brand brand;
  final bool isLast;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: EdgeInsets.only(
          left: isFirst ? 10 : 5,
          right: isLast ? 10 : 5,
        ),
        width: 130,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(6),
        ),
        child: BlurHash(
          errorBuilder: (context, error, stackTrace) => loadWidget,
          curve: Curves.easeOut,
          hash: brand.logo.hashblur,
          image: '$pathUrl/${brand.logo.url}',
          imageFit: BoxFit.cover,
        ),
      ),
    );
  }
}
