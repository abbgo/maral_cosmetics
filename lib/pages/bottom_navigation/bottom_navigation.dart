import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/pages/basket/basket.dart';
import 'package:maral_cosmetics/pages/bottom_navigation/parts/bottom_navigation_bar.dart';
import 'package:maral_cosmetics/pages/bottom_navigation/parts/home_app_bar_title.dart';
import 'package:maral_cosmetics/pages/favorites/favorites.dart';
import 'package:maral_cosmetics/pages/home/home_body.dart';
import 'package:maral_cosmetics/pages/setting/setting.dart';
import 'package:maral_cosmetics/providers/pages/bottom_navigation.dart';

class BottomNavigationPage extends ConsumerWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget? titleWidget;
    int selectedIndex = ref.watch(selectedBottomIndexProvider);

    List<Widget> pages = [
      const HomeBody(),
      const BasketPage(),
      const FavoritesPage(),
      const SettingPage(),
    ];

    switch (selectedIndex) {
      case 0:
        titleWidget = const HomeAppBarTitle();
        break;
      default:
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: titleWidget),
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar:
          BottomNavigationBarPart(selectedIndex: selectedIndex),
    );
  }
}
