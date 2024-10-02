import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/count_products.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter_buttons/product_sort_and_filter_buttons.dart';
import 'package:maral_cosmetics/pages/parts/products_gridview.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key, this.category, this.brand});

  final CategoryModel? category;
  final Brand? brand;

  @override
  Widget build(BuildContext context) {
    String title = '';

    if (category != null) {
      title = category!.name;
    } else if (brand != null) {
      title = brand!.name;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
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
