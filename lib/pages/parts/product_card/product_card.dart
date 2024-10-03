import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_card_image.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_order_button.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star_and_price.dart';
import 'package:maral_cosmetics/pages/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    // required this.product,
    required this.image,
    this.isFisrt,
    this.isLast,
  });

  // final Product product;
  final String image;
  final bool? isFisrt, isLast;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          goToPage(context, const ProductPage(forBasket: false), false),
      child: Container(
        width: 160,
        margin: isFisrt != null && isLast != null
            ? EdgeInsets.only(left: isFisrt! ? 5 : 0, right: isLast! ? 5 : 0)
            : null,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ProductCardImage(image: product.images[0]),
            ProductCardImage(image: image),
            const SizedBox(height: 10),
            const Column(
              children: [
                Text(
                  'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: 'HeyWowRegular', fontSize: 12),
                ),
                SizedBox(height: 5),
                ProductStarAndPrice(
                  fontSizePrice: 12,
                  fontSizeOldPrice: 8,
                ),
                SizedBox(height: 5),
                ProductOrderButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
