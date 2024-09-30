import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(category.name),
    );
  }
}
