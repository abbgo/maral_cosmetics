import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/providers/pages/product.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.pageController,
    required this.scrollController,
    required this.menuKeys,
  });

  final PageController pageController;
  final ScrollController scrollController;
  final List<GlobalKey> menuKeys;

  void _scrollToItem(int index, BuildContext context) {
    final keyContext = menuKeys[index].currentContext;
    if (keyContext != null) {
      // Get the position of the child relative to the screen
      final box = keyContext.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero);

      // Get the screen width
      final screenWidth = MediaQuery.of(context).size.width;

      // Calculate the scroll offset if the item is off-screen
      if (position.dx < 0 || position.dx + box.size.width > screenWidth) {
        double offset = scrollController.offset + position.dx;
        scrollController.animateTo(
          offset,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.maxFinite,
      child: Stack(
        alignment: const Alignment(0, 0.9),
        children: [
          Consumer(
            builder: (context, ref, child) => ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: PageView.builder(
                onPageChanged: (value) {
                  _scrollToItem(value, context);
                  ref.read(selectedProductImageProvider.notifier).state = value;
                },
                controller: pageController,
                pageSnapping: true,
                itemCount: productSliders.length,
                itemBuilder: (context, index) =>
                    Image.asset(productSliders[index], fit: BoxFit.cover),
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
              controller: pageController,
              count: productSliders.length,
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
