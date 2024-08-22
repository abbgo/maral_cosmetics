import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class FavoriteAppBarTitle extends StatelessWidget {
  const FavoriteAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Halanlarym'),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: defaultLightColor,
            ),
            child: Icon(Icons.delete_sweep, color: defaultColor),
          ),
        ),
      ],
    );
  }
}
