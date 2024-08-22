import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_product_buttons.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_price.dart';

class FavoriteProductData extends StatelessWidget {
  const FavoriteProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Text(
            'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'HeyWowRegular',
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 10),
          HomeDiscountProductPrice(fontSizePrice: 10, fontSizeOldPrice: 8),
          SizedBox(height: 10),
          FavoriteProductButtons(),
        ],
      ),
    );
  }
}
