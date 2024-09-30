import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/category/parts/result_categories.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text('Kategoriya'),
          ResultCategories(),
        ],
      ),
    );
  }
}
