import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class HomeAboutCosmeticsList extends StatelessWidget {
  const HomeAboutCosmeticsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          color: const Color(0xffFDFDF9),
          padding: const EdgeInsets.all(6),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Image.asset(
                  homeAboutCosmetics[index],
                  width: 95,
                  height: 95,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: homeAboutCosmetics.length,
      ),
    );
  }
}
