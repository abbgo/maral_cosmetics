import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/bottom_sheet_title.dart';
import 'package:maral_cosmetics/pages/parts/contact_phones/parts/contact_phones_list_tile.dart';
import 'package:maral_cosmetics/pages/parts/top_widget_of_bottom_navigation.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/margin_styles.dart';

class ContactPhones extends StatelessWidget {
  const ContactPhones({super.key});

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
                BottomSheetTitle(text: 'Habarlasmak'),
                ContactPhonesListTile(text: '+993 62674323'),
                Divider(color: Color(0xffD9D9D9)),
                ContactPhonesListTile(text: '+993 63345623'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
