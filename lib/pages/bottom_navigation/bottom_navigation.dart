import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/pages/basket.dart';
import 'package:maral_cosmetics/helpers/methods/pages/home.dart';
import 'package:maral_cosmetics/helpers/methods/pages/products.dart';
import 'package:maral_cosmetics/helpers/methods/pages/setting.dart';
import 'package:maral_cosmetics/pages/basket/basket.dart';
import 'package:maral_cosmetics/pages/bottom_navigation/parts/bottom_navigation_bar.dart';
import 'package:maral_cosmetics/pages/home/home_body.dart';
import 'package:maral_cosmetics/pages/products/parts/result_products.dart';
import 'package:maral_cosmetics/pages/setting/setting.dart';
import 'package:maral_cosmetics/providers/pages/bottom_navigation.dart';

class BottomNavigationPage extends ConsumerWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppBar appBarWidget = AppBar();
    int selectedIndex = ref.watch(selectedBottomIndexProvider);

    List<Widget> pages = [
      const HomeBody(),
      const BasketPage(),
      const ResultProducts(),
      const SettingPage(),
    ];

    switch (selectedIndex) {
      case 0:
        appBarWidget = homePageAppBar();
        break;
      case 1:
        appBarWidget = basketPageAppBar();
        break;
      case 2:
        appBarWidget = productsPageAppBar('Foverim', context);
        break;
      case 3:
        appBarWidget = settingPageAppBar();
        break;
      default:
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBarWidget,
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar:
          BottomNavigationBarPart(selectedIndex: selectedIndex),
    );
  }
}
