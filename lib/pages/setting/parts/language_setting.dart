import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/bottom_sheets.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class LanguageSetting extends StatelessWidget {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: defaultLightColor,
      child: ListTile(
        onTap: () => showLanguageBottomSheet(context),
        leading: Icon(Icons.language, color: defaultColor),
        title: Text(
          'Dil saylan',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Turkmen dili',
              style: TextStyle(
                color: defaultColor,
                fontFamily: 'HeyWowRegular',
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 5),
            Icon(Icons.adaptive.arrow_forward, color: defaultColor, size: 20),
          ],
        ),
      ),
    );
  }
}
