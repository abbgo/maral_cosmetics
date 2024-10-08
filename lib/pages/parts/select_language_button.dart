import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/bottom_sheets.dart';

class SelectLanguageButton extends StatelessWidget {
  const SelectLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showLanguageBottomSheet(context),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.language, color: Color(0xff9D9D9D)),
          SizedBox(width: 10),
          Text(
            'Dil saylan',
            style: TextStyle(color: Color(0xff9D9D9D), fontFamily: 'Inter'),
          ),
        ],
      ),
    );
  }
}
