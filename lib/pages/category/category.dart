import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/count_products.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter_buttons/product_sort_and_filter_buttons.dart';
import 'package:maral_cosmetics/pages/parts/products_gridview.dart';

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
          child: ProductSortAndFilterButtons(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            CountProducts(),
            ProductsGridview(),
          ],
        ),
      ),
    );
  }
}
