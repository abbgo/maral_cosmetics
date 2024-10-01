import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/categories/parts/result_categories.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Kategoriya'),
          SizedBox(height: 10),
          ResultCategories(),
        ],
      ),
    );
  }
}
