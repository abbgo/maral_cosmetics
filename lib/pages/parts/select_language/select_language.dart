import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/select_language/parts/language_list_tile.dart';
import 'package:maral_cosmetics/pages/parts/bottom_sheet_title.dart';
import 'package:maral_cosmetics/pages/parts/top_widget_of_bottom_navigation.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/margin_styles.dart';

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: bottomNavigationEdgeInsets,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          const TopWidgetOfBottomNavigation(),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 8),
            decoration: bottomNavigationBoxDecoration,
            child: const Column(
              children: [
                BottomSheetTitle(),
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
