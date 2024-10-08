import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/pages/products/parts/result_products.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_history.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_input.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';
import 'package:maral_cosmetics/providers/pages/search_product.dart';

class SearchProductPage extends ConsumerWidget {
  const SearchProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool openSearchHistory = ref.watch(openSearchHistoryProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: const Color(0xffFAF8F9)),
          onPressed: () {
            ref.read(productSearchProvider.notifier).state = '';
            Navigator.pop(context);
          },
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: const SearchInput(),
        backgroundColor: const Color(0xffFAF8F9),
      ),
      body: openSearchHistory ? const SearchHistory() : const ResultProducts(),
    );
  }
}
