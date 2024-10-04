import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/image.dart';
import 'package:maral_cosmetics/providers/pages/product.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImageSlider extends ConsumerStatefulWidget {
  const ProductImageSlider(
      {super.key, required this.images, required this.forZoom});

  final List<BlurImage> images;
  final bool forZoom;

  @override
  ConsumerState<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends ConsumerState<ProductImageSlider> {
  PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int selectedProductImage = ref.watch(selectedProductImageProvider);
    _pageController = PageController(initialPage: selectedProductImage);
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: Stack(
        alignment: const Alignment(0, 0.9),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: PageView.builder(
              onPageChanged: (value) =>
                  ref.read(selectedProductImageProvider.notifier).state = value,
              controller: _pageController,
              pageSnapping: true,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                BlurImage image = widget.images[index];
                return widget.forZoom
                    ? InteractiveViewer(
                        minScale: 0.5,
                        maxScale: 2,
                        child: BlurHash(
                          errorBuilder: (context, error, stackTrace) =>
                              loadWidget,
                          curve: Curves.easeOut,
                          hash: image.hashblur,
                          image: '$pathUrl/${image.url}',
                          imageFit: BoxFit.cover,
                        ),
                      )
                    : BlurHash(
                        errorBuilder: (context, error, stackTrace) =>
                            loadWidget,
                        curve: Curves.easeOut,
                        hash: image.hashblur,
                        image: '$pathUrl/${image.url}',
                        imageFit: BoxFit.cover,
                      );
              },
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
              count: widget.images.length,
              effect: WormEffect(
                dotColor: Colors.white,
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: defaultColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
