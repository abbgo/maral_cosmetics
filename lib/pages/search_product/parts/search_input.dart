import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/database/search.dart';
import 'package:maral_cosmetics/providers/pages/products.dart';
import 'package:maral_cosmetics/providers/pages/search_product.dart';

class SearchInput extends ConsumerWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color(0xfff2ebee)),
    );

    String searchText = ref.watch(searchTextProvider);

    return SizedBox(
      height: 40,
      child: TextField(
        controller: TextEditingController.fromValue(
          TextEditingValue(
            text: searchText,
            selection: TextSelection.collapsed(offset: searchText.length),
          ),
        ),
        autofocus: true,
        textInputAction: TextInputAction.search,
        cursorColor: const Color(0xffCCCCCC),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: const Color(0xfff6f1f3),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          hintText: 'SEARCH',
          hintStyle: const TextStyle(fontSize: 14),
          prefixIcon: const Icon(
            Icons.search,
            size: 22,
            color: Color(0xffA16F8A),
          ),
          suffixIcon: searchText.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    ref.read(productSearchProvider.notifier).state = '';
                    ref.read(searchTextProvider.notifier).state = '';
                    ref.read(openSearchHistoryProvider.notifier).state = true;
                  },
                  child: const Icon(
                    Icons.cancel,
                    color: Color(0xffADADAD),
                  ),
                )
              : null,
        ),
        onChanged: (value) {
          ref.read(searchTextProvider.notifier).state = value;
          if (value.isNotEmpty) {
            ref.read(openSearchHistoryProvider.notifier).state = true;
          }
        },
        onSubmitted: (value) async {
          if (value.isNotEmpty) {
            await ref.read(createSearchProvider(value).future);
            ref.read(productSearchProvider.notifier).state = value;
            ref.read(openSearchHistoryProvider.notifier).state = false;
          }
        },
      ),
    );
  }
}
