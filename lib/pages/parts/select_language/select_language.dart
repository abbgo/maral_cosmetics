import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/select_language/parts/language_list_tile.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xff824D6A),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          const LanguageListTile(text: 'Turkmen dili'),
          const Divider(color: Color(0xffD9D9D9)),
          const LanguageListTile(text: 'Rus dili'),
        ],
      ),
    );
  }
}
