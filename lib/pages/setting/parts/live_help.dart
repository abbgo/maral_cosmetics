import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class LiveHelp extends StatelessWidget {
  const LiveHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: bottomBorder,
      leading: Icon(Icons.live_help_outlined, color: defaultColor),
      title: Text(
        'Salgylanma',
        style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
      ),
    );
  }
}
