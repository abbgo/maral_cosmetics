import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_card_image.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_order_button.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star_and_price.dart';
import 'package:maral_cosmetics/pages/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToPage(
          context, ProductPage(forBasket: false, product: product), false),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductCardImage(images: product.images),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  child: Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: 'HeyWowRegular',
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const ProductStarAndPrice(
                  fontSizePrice: 12,
                  fontSizeOldPrice: 8,
                ),
                const SizedBox(height: 5),
                const ProductOrderButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCardStatic extends StatelessWidget {
  const ProductCardStatic({
    super.key,
    this.isFisrt,
    this.isLast,
  });

  final bool? isFisrt, isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: isFisrt != null && isLast != null
          ? EdgeInsets.only(left: isFisrt! ? 5 : 0, right: isLast! ? 5 : 0)
          : null,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(child: Text('Haryt')),
    );
  }
}
