import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/database/search.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';
import 'package:maral_cosmetics/providers/pages/search_product.dart';

class SearchHistoryListTile extends ConsumerWidget {
  const SearchHistoryListTile({super.key, required this.search});

  final String search;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        ref.read(productSearchProvider.notifier).state = search;
        ref.read(openSearchHistoryProvider.notifier).state = false;
      },
      contentPadding: const EdgeInsets.only(right: 0),
      dense: true,
      leading: const Icon(
        Icons.history,
        color: Color(0xff818181),
      ),
      title: Text(
        search,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          color: Color(0xff666666),
        ),
      ),
      trailing: IconButton(
        onPressed: () => ref.read(removeSearchProvider(search)),
        icon: const Icon(
          Icons.close,
          color: Color(0xffE0E0E0),
        ),
      ),
    );
  }
}
