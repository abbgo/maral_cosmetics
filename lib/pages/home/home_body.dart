import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_brands/home_brands.dart';
import 'package:maral_cosmetics/pages/home/parts/home_galery.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/home_discount_products_list.dart';
import 'package:maral_cosmetics/pages/parts/home_new_products/home_new_products.dart';
import 'package:maral_cosmetics/pages/home/parts/home_slider.dart';
import 'package:maral_cosmetics/pages/parts/home_menus/home_menus.dart';
import 'package:maral_cosmetics/pages/parts/home_news/home_news.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeMenus(pageController: pageController),
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
              ListView(
                children: const [
                  HomeSlider(),
                  SizedBox(height: 20),
                  HomeNewProducts(),
                  SizedBox(height: 20),
                  HomeDiscountProductsList(),
                  SizedBox(height: 20),
                  HomeNews(),
                  SizedBox(height: 20),
                  HomeAboutCosmetics(),
                  SizedBox(height: 20),
                  HomeBrands(),
                  SizedBox(height: 20),
                  HomeGalery(),
                  SizedBox(height: 20),
                ],
              ),
              const Center(child: Text('Categories page')),
            ],
          ),
        ),
      ],
    );
  }
}
