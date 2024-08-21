import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/providers/pages/product.dart';

class ProductImageList extends StatelessWidget {
  const ProductImageList({
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
    return Consumer(
      builder: (context, ref, child) {
        int selectedImage = ref.watch(selectedProductImageProvider);

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SizedBox(
            height: 85,
            child: ListView.separated(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                key: menuKeys[index],
                onTap: () async {
                  _scrollToItem(index, context);
                  ref.read(selectedProductImageProvider.notifier).state = index;
                  await pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        productSliders[index],
                        width: 125,
                        height: 85,
                        fit: BoxFit.cover,
                      ),
                    ),
                    selectedImage == index
                        ? const SizedBox()
                        : Container(
                            height: 85,
                            width: 125,
                            color: Colors.white.withOpacity(.3),
                          ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 5),
              itemCount: productSliders.length,
            ),
          ),
        );
      },
    );
  }
}
