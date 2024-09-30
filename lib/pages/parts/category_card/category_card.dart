import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/category_card/parts/category_card_image.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: CategoryCardImage(image: category.image),
      title: Text(category.name),
    );
  }
}
