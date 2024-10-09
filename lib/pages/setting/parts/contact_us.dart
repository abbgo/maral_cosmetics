import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/bottom_sheets.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: bottomBorder,
      onTap: () => showPhonesBottomSheet(context),
      leading: Icon(Icons.support_agent_outlined, color: defaultColor),
      title: Text(
        'Habarlasmak',
        style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
      ),
    );
  }
}
