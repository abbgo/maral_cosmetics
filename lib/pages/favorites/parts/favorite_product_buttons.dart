import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class FavoriteProductButtons extends StatelessWidget {
  const FavoriteProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              size: 12,
              color: Color(0xffFFBB00),
            ),
            const SizedBox(width: 2),
            Text(
              '3.0',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'HeyWowRegular',
                color: defaultColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
