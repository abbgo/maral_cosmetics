import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_app_bar_bottom.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: DIscountPageAppBarBottom(),
        ),
      ),
    );
  }
}
