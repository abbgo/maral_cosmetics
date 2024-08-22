import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_product_count.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_products_list.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FavoriteProductCount(),
          SizedBox(height: 10),
          FavoriteProductsList(),
        ],
      ),
    );
  }
}
