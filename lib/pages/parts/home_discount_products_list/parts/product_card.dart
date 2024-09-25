import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_buttons.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_price.dart';
import 'package:maral_cosmetics/pages/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.isFisrt,
    required this.isLast,
  });

  final String image;
  final bool isFisrt, isLast;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          goToPage(context, const ProductPage(forBasket: false), false),
      child: Container(
        height: 275,
        width: 160,
        margin: EdgeInsets.only(left: isFisrt ? 5 : 0, right: isLast ? 5 : 0),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            const Expanded(
              child: Column(
                children: [
                  Text(
                    'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontFamily: 'HeyWowRegular', fontSize: 12),
                  ),
                  SizedBox(height: 5),
                  ProductStartAndPrice(
                    fontSizePrice: 12,
                    fontSizeOldPrice: 8,
                  ),
                  SizedBox(height: 5),
                  HomeDiscountProductButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
