import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/favorites/parts/favorite_product_card.dart';

class BasketProductsList extends StatelessWidget {
  const BasketProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>
            FavoriteProductCard(images: favoriteProducts[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: favoriteProducts.length,
      ),
    );
  }
}
