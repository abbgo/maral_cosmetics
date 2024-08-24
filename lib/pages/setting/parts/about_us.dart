import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/about_us/about_us.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: defaultLightColor,
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          CustomPageRoute(
            child: const AboutUsPage(),
            direction: AxisDirection.left,
          ),
        ),
        leading: Icon(Icons.person_pin_circle_outlined, color: defaultColor),
        title: Text(
          'Biz barada',
          style: TextStyle(color: defaultColor, fontFamily: 'HeyWowRegular'),
        ),
      ),
    );
  }
}
