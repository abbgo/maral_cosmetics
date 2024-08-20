import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/home_discount_products_list.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/home_new_brends_slider.dart';
import 'package:maral_cosmetics/pages/home/parts/home_slider.dart';
import 'package:maral_cosmetics/pages/parts/home_menus/home_menus.dart';
import 'package:maral_cosmetics/pages/parts/home_news/home_news.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeMenus(),
        HomeSlider(),
        SizedBox(height: 20),
        HomeNewBrendsSlider(),
        SizedBox(height: 20),
        HomeDiscountProductsList(),
        SizedBox(height: 20),
        HomeNews(),
        SizedBox(height: 20),
        HomeAboutCosmetics(),
      ],
    );
  }
}
