import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_product_data.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_product_images_slider.dart';
import 'package:maral_cosmetics/pages/product/product.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class BasketProductCard extends StatelessWidget {
  const BasketProductCard({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToPage(context, const ProductPage(), false),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: defaultLightColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            FavoriteProductImagesSlider(images: images),
            const SizedBox(width: 10),
            const FavoriteProductData(),
          ],
        ),
      ),
    );
  }
}
