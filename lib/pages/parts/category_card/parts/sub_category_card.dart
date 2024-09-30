import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';

class SubCategoryCard extends StatelessWidget {
  const SubCategoryCard({super.key, required this.subcategory});

  final CategoryModel subcategory;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(subcategory.name));
  }
}
