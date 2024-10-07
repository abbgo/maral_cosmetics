import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/pages/search_product/parts/search_history_list_tile.dart';
import 'package:maral_cosmetics/providers/database/search.dart';

class SearchHistory extends ConsumerWidget {
  const SearchHistory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<String>> searchs = ref.watch(getSearchsProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gözleg taryhy:',
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: searchs.when(
            data: (response) {
              return ListView.separated(
                itemBuilder: (context, index) =>
                    SearchHistoryListTile(search: response[index]),
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(color: Color(0xffE0E0E0)),
                itemCount: response.length,
              );
            },
            error: (error, stackTrace) => errorMethod(error),
            loading: () => loadWidget,
          ),
        ),
      ],
    );
  }
}
