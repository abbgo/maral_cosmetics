import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/log_out_bottom_sheet/parts/log_out_bottom_sheet_title.dart';
import 'package:maral_cosmetics/pages/parts/top_widget_of_bottom_navigation.dart';
import 'package:maral_cosmetics/styles/decorations.dart';
import 'package:maral_cosmetics/styles/margin_styles.dart';

class LogOutBottomSheet extends StatelessWidget {
  const LogOutBottomSheet({super.key});

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
            child: Column(
              children: [
                const LogOutBottomSheetTitle(),
                const SizedBox(height: 40),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffc2a1b3),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 55),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Yok',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff824D6A),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 55),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Hawa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
