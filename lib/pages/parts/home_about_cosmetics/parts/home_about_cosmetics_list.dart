import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/parts/home_about_cosmetics_card.dart';

class HomeAboutCosmeticsList extends StatelessWidget {
  const HomeAboutCosmeticsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            HomeAboutCosmeticsCard(image: homeAboutCosmetics[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: homeAboutCosmetics.length,
      ),
    );
  }
}
