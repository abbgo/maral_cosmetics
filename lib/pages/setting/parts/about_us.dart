import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: defaultLightColor,
      child: ListTile(
        leading: Icon(Icons.person_pin_circle_outlined, color: defaultColor),
        title: Text(
          'Biz barada',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
      ),
    );
  }
}
