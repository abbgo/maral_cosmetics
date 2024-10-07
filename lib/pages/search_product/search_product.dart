import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/pages/search_product/parts/result_search_product.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_history.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_input.dart';
import 'package:maral_cosmetics/providers/pages/search_product.dart';

class SearchProductPage extends StatelessWidget {
  const SearchProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          style: IconButton.styleFrom(backgroundColor: const Color(0xffFAF8F9)),
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: const SearchInput(),
        backgroundColor: const Color(0xffFAF8F9),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          bool openSearchHistory = ref.watch(openSearchHistoryProvider);

          return Padding(
            padding: const EdgeInsets.only(left: 20, top: 12, right: 20),
            child: openSearchHistory
                ? const SearchHistory()
                : const ResultSearchProduct(),
          );
        },
      ),
    );
  }
}
