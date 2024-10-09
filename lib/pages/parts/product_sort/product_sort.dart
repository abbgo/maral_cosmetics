import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_sort/parts/product_sort_radio_list_tile.dart';
import 'package:maral_cosmetics/pages/parts/product_sort/parts/product_sort_title.dart';
import 'package:maral_cosmetics/pages/parts/top_widget_of_bottom_navigation.dart';

class ProductSort extends StatelessWidget {
  const ProductSort({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const TopWidgetOfBottomNavigation(),
          Container(
            margin:
                const EdgeInsets.only(left: 20, top: 8, right: 20, bottom: 20),
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Wrap(
              children: [
                ProductSortTitle(),
                ProductSortRadioListTile(title: 'Ahlisi', value: 'all'),
                ProductSortRadioListTile(
                    title: 'Iň meşhurlar', value: 'popular'),
                ProductSortRadioListTile(
                    title: 'Arzandan gymmada', value: 'priceASC'),
                ProductSortRadioListTile(
                    title: 'Gymmatdan arzana', value: 'priceDESC'),
                ProductSortRadioListTile(
                    title: 'Ady boýunça ( A-Z )', value: 'nameASC'),
                ProductSortRadioListTile(
                    title: 'Ady boýunça ( Z - A )', value: 'nameDESC'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
