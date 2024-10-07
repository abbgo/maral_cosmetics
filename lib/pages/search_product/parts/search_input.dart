import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/database/search.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  bool openClear = false;
  TextEditingController searchCtrl = TextEditingController();

  @override
  void dispose() {
    searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color(0xfff2ebee)),
    );

    return Consumer(
      builder: (context, ref, child) {
        return SizedBox(
          height: 40,
          child: TextField(
            controller: searchCtrl,
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
              suffixIcon: openClear
                  ? GestureDetector(
                      onTap: () {
                        searchCtrl.clear();
                      },
                      child: const Icon(Icons.close),
                    )
                  : null,
            ),
            onChanged: (value) {
              setState(() {
                if (value.isNotEmpty) {
                  openClear = true;
                } else {
                  openClear = false;
                }
              });
            },
            onSubmitted: (value) async {
              await ref.read(createSearchProvider(value).future);
            },
          ),
        );
      },
    );
  }
}
