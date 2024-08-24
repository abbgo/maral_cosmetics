import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class LanguageListTile extends StatelessWidget {
  const LanguageListTile({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: false,
      title: Text(
        text,
        style: TextStyle(fontFamily: 'HeyWowRegular', color: defaultColor),
      ),
      trailing: Icon(Icons.check, color: defaultColor),
    );
  }
}
