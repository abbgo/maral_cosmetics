import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/category_card/parts/category_card_image.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const Border.symmetric(),
      tilePadding: const EdgeInsets.all(0),
      childrenPadding: const EdgeInsets.all(0),
      backgroundColor: const Color(0xfffffafc),
      leading: CategoryCardImage(image: category.image),
      title: Text(
        category.name,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      children: category.subcategories
          .map(
            (e) => ListTile(title: Text(e.name)),
          )
          .toList(),
    );
  }
}
