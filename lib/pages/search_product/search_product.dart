import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_input.dart';

class SearchProductPage extends StatelessWidget {
  const SearchProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: const Color(0xffFAF8F9)),
          onPressed: () {},
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: const SearchInput(),
        backgroundColor: const Color(0xffFAF8F9),
      ),
      body: const Center(
        child: Text('Search Product'),
      ),
    );
  }
}
