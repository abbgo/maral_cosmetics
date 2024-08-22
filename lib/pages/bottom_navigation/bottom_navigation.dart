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
    int selectedIndex = ref.watch(selectedBottomIndexProvider);

    List<Widget> pages = [
      const HomeBody(),
      const BasketPage(),
      const FavoritesPage(),
      const SettingPage(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: /* selectedIndex == 0
          ?*/
          AppBar(
        title: const HomeAppBarTitle(),
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
