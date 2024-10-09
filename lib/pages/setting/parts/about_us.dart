import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/about_us.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: bottomBorder,
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
    );
  }
}
