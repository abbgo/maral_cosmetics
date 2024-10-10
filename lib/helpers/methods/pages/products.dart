import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter_buttons/product_sort_and_filter_buttons.dart';
import 'package:maral_cosmetics/pages/search_product/search_product.dart';

AppBar productsPageAppBar(String title, BuildContext context) {
  return AppBar(
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
    actions: [
      IconButton(
        onPressed: () => Navigator.push(
          context,
          CustomPageRoute(
            child: const SearchProductPage(),
            direction: AxisDirection.left,
          ),
        ),
        icon: Image.asset('assets/images/search.png', height: 24),
      ),
    ],
  );
}
