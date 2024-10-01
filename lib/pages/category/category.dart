import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.name,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: ProductSortAndFilter(),
        ),
      ),
    );
  }
}
