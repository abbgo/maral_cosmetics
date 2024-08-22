import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_product_buttons.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_product_buttons.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_price.dart';

class FavoriteProductData extends StatelessWidget {
  const FavoriteProductData({super.key, required this.forFavorite});

  final bool forFavorite;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Text(
            'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'HeyWowRegular',
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 10),
          const HomeDiscountProductPrice(
              fontSizePrice: 10, fontSizeOldPrice: 8),
          const SizedBox(height: 10),
          forFavorite
              ? const FavoriteProductButtons()
              : const BasketProductButtons(),
        ],
      ),
    );
  }
}
