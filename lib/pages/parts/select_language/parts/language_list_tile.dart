import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class LanguageListTile extends ConsumerWidget {
  const LanguageListTile({super.key, required this.text, required this.lang});

  final String text, lang;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String selectedLang = ref.watch(langProvider);

    return Container(
      decoration: BoxDecoration(border: bottomBorder),
      child: RadioListTile<String>.adaptive(
        contentPadding: const EdgeInsets.only(left: 0),
        activeColor: const Color(0xffA16F8A),
        title: Text(
          text,
          style:
              const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
        ),
        value: lang,
        groupValue: selectedLang,
        onChanged: (value) => ref.read(langProvider.notifier).update(lang),
      ),
    );
  }
}
