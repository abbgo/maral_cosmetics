import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/home/parts/home_app_bar_notification_button.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/logo.jpg",
          height: kToolbarHeight - 15,
        ),
        const HomeAppBarNotificationButton(),
      ],
    );
  }
}
