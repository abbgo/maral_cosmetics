import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_sort/parts/product_sort_radio_list_tile.dart';
import 'package:maral_cosmetics/pages/parts/product_sort/parts/product_sort_title.dart';

class ProductSort extends StatelessWidget {
  const ProductSort({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Wrap(
          children: [
            ProductSortTitle(),
            ProductSortRadioListTile(title: 'Ahlisi', value: ''),
          ],
        ),
      ),
    );
  }
}
