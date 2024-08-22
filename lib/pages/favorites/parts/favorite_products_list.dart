import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class FavoriteProductsList extends StatelessWidget {
  const FavoriteProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const Text('some'),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: favoriteProducts.length,
      ),
    );
  }
}
