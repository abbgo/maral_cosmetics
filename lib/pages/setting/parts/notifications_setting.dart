import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class NotificationsSetting extends StatelessWidget {
  const NotificationsSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: defaultLightColor,
      child: ListTile(
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
      ),
    );
  }
}
