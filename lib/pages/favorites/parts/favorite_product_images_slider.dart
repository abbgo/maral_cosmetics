import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FavoriteProductImagesSlider extends StatefulWidget {
  const FavoriteProductImagesSlider({super.key, required this.images});

  final List<String> images;

  @override
  State<FavoriteProductImagesSlider> createState() =>
      _FavoriteProductImagesSliderState();
}

class _FavoriteProductImagesSliderState
    extends State<FavoriteProductImagesSlider> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 100,
        child: Stack(
          alignment: const Alignment(0, 0.9),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: PageView.builder(
                controller: _pageController,
                pageSnapping: true,
                itemCount: widget.images.length,
                itemBuilder: (context, index) =>
                    Image.asset(widget.images[index], fit: BoxFit.cover),
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
                  dotHeight: 5,
                  dotWidth: 5,
                  activeDotColor: defaultColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
