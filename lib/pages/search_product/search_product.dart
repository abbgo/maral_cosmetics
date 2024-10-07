import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_input.dart';

class SearchProductPage extends StatelessWidget {
  const SearchProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const SearchInput()),
      body: const Center(
        child: Text('Search Product'),
      ),
    );
  }
}
