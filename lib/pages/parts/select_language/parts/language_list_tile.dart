import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';

class LanguageListTile extends ConsumerWidget {
  const LanguageListTile({super.key, required this.text, required this.lang});

  final String text, lang;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String selectedLang = ref.watch(langProvider);

    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xfff5f5f5), width: 1)),
      ),
      child: RadioListTile<String>.adaptive(
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
