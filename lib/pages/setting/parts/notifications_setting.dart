import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class NotificationsSetting extends StatelessWidget {
  const NotificationsSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: bottomBorder,
      leading: Icon(Icons.notifications_outlined, color: defaultColor),
      title: Text(
        'Bildirisler',
        style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
      ),
      trailing: Switch(
        activeColor: defaultColor,
        value: true,
        onChanged: (value) {},
      ),
    );
  }
}
