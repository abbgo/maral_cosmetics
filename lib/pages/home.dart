import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_app_bar_notification_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}
