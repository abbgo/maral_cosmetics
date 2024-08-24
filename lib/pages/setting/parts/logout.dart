import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class LogoutPart extends StatelessWidget {
  const LogoutPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffee7e8),
      child: ListTile(
        leading: Icon(Icons.logout, color: defaultColor),
        title: Text(
          'Ulgamdan cykmak',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
      ),
    );
  }
}
