import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/parts/home_about_cosmetics_list.dart';

class HomeAboutCosmetics extends StatelessWidget {
  const HomeAboutCosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text('Kosmetika barada', style: TextStyle(fontSize: 20)),
        ),
        HomeAboutCosmeticsList(),
      ],
    );
  }
}
