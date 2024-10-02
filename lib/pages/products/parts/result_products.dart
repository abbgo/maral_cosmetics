import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/count_products.dart';
import 'package:maral_cosmetics/pages/parts/products_gridview.dart';

class ResultProducts extends StatelessWidget {
  const ResultProducts({super.key, this.categoryID, this.brandID});

  final String? categoryID, brandID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: const [
          CountProducts(),
          ProductsGridview(),
        ],
      ),
    );
  }
}
