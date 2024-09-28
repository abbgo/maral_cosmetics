import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/new_products/new_products.dart';
import 'package:maral_cosmetics/pages/parts/home_new_products/parts/home_new_products_result.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';

class HomeNewProducts extends StatelessWidget {
  const HomeNewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeTitle(
          text: 'In taze gosulanlar',
          onTap: () => Navigator.push(
            context,
            CustomPageRoute(
              child: const NewProductsPage(),
              direction: AxisDirection.left,
            ),
          ),
        ),
        const HomeNewProductsResult(),
      ],
    );
  }
}
