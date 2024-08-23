import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/setting/parts/about_us.dart';
import 'package:maral_cosmetics/pages/setting/parts/app_version.dart';
import 'package:maral_cosmetics/pages/setting/parts/contact_us.dart';
import 'package:maral_cosmetics/pages/setting/parts/language_setting.dart';
import 'package:maral_cosmetics/pages/setting/parts/my_orders.dart';
import 'package:maral_cosmetics/pages/setting/parts/notifications_setting.dart';
import 'package:maral_cosmetics/pages/setting/parts/user_profile.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      fit: StackFit.expand,
      children: [
        AppVersion(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UserProfile(),
              NotificationsSetting(),
              LanguageSetting(),
              MyOrders(),
              AboutUs(),
              ContactUs(),
            ],
          ),
        ),
      ],
    );
  }
}
