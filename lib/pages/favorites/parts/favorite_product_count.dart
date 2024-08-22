import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class FavoriteProductCount extends StatelessWidget {
  const FavoriteProductCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Jemi (3) haryt bar',
      style: TextStyle(
        fontFamily: 'HeyWowRegular',
        color: defaultColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
