import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/home/parts/home_app_bar_notification_button.dart';

AppBar homePageAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/logo.jpg",
          height: kToolbarHeight - 15,
        ),
        const HomeAppBarNotificationButton(),
      ],
    ),
    centerTitle: false,
    leading: null,
  );
}
