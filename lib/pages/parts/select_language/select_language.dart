import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/select_language/parts/language_list_tile.dart';
import 'package:maral_cosmetics/pages/parts/select_language/parts/select_language_title.dart';
import 'package:maral_cosmetics/pages/parts/top_widget_of_bottom_navigation.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          const TopWidgetOfBottomNavigation(),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Column(
              children: [
                SelectLanguageTitle(),
                LanguageListTile(text: 'Turkmen', lang: 'tk'),
                LanguageListTile(text: 'Русский', lang: 'ru'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
