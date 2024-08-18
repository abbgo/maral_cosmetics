import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeAppBarNotificationButton extends StatelessWidget {
  const HomeAppBarNotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kToolbarHeight - 10,
      height: kToolbarHeight - 10,
      decoration: BoxDecoration(
        color: defaultLightColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: defaultLightColor, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: -10,
            blurRadius: 10,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [defaultLightColor, Colors.white],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.notifications_outlined,
          color: defaultColor,
        ),
      ),
    );
  }
}
