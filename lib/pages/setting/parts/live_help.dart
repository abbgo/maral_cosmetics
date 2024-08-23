import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class LiveHelp extends StatelessWidget {
  const LiveHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: defaultLightColor,
      child: ListTile(
        leading: Icon(Icons.live_help_outlined, color: defaultColor),
        title: Text(
          'Salgylanma',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
      ),
    );
  }
}
