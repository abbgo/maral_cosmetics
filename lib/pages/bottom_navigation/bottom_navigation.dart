import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/pages/home/parts/home_app_bar_notification_button.dart';
import 'package:maral_cosmetics/pages/home/parts/home_body.dart';

class BottomNavigationPage extends ConsumerWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedIndex = ref.watch(selectedBottomIndexProvider);

    List<Widget> pages = [
      const HomeBody(),
      const FavoritesPage(),
      const SearchProductPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar:
          BottomNavigationBarPart(selectedIndex: selectedIndex),
    );
  }
}
