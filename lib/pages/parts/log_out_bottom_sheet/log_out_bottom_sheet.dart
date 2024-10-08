import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/log_out_bottom_sheet/parts/log_out_bottom_sheet_no_button.dart';
import 'package:maral_cosmetics/pages/parts/log_out_bottom_sheet/parts/log_out_bottom_sheet_title.dart';
import 'package:maral_cosmetics/pages/parts/log_out_bottom_sheet/parts/log_out_bottom_sheet_yes_button.dart';
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
            child: const Column(
              children: [
                LogOutBottomSheetTitle(),
                SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogOutBottomSheetNoButton(),
                    LogOutBottomSheetYesButton(),
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
