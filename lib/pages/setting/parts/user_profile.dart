import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const Border(bottom: BorderSide(color: Color(0xffEDEDED))),
      leading: Icon(Icons.account_circle, color: defaultColor, size: 50),
      title: Text(
        'Ahmet',
        style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
      ),
      subtitle: Text(
        '+993 63 509004',
        style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
      ),
    );
  }
}
