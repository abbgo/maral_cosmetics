import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:maral_cosmetics/helpers/methods/parts/product_image.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/image.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_favorite_button.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductCardImage extends StatefulWidget {
  const ProductCardImage({super.key, required this.product});

  // final List<BlurImage> images;
  final Product product;

  @override
  State<ProductCardImage> createState() => _ProductCardImageState();
}

class _ProductCardImageState extends State<ProductCardImage> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.9),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 140,
            child: PageView.builder(
              pageSnapping: true,
              controller: _pageController,
              itemCount: widget.product.images.length,
              itemBuilder: (context, index) {
                BlurImage image = widget.product.images[index];
                return BlurHash(
                  errorBuilder: (context, error, stackTrace) => loadWidget,
                  curve: Curves.easeOut,
                  hash: image.hashblur,
                  image: '$pathUrl/${image.url}',
                  imageFit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SmoothPageIndicator(
            controller: _pageController,
            count: widget.product.images.length,
            effect: WormEffect(
              dotColor: Colors.white,
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: defaultColor,
            ),
          ),
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
        ProductFavoriteButton(top: 5, right: 5, product: widget.product),
      ],
    );
  }
}
