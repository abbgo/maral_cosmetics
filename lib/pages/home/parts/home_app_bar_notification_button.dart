import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/decorations.dart';

class HomeAppBarNotificationButton extends StatelessWidget {
  const HomeAppBarNotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kToolbarHeight - 10,
      height: kToolbarHeight - 10,
      decoration: innerShadowBoxDecoration,
      child: Center(
        child: Icon(
          Icons.notifications_outlined,
          color: defaultColor,
        ),
      ),
    );
  }
}
