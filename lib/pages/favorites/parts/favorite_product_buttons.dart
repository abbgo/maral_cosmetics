import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class FavoriteProductButtons extends StatelessWidget {
  const FavoriteProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: defaultLightColor.withOpacity(.8),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.local_mall_outlined, color: defaultColor),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: defaultLightColor.withOpacity(.8),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.favorite, color: defaultColor),
            ),
          ],
        ),
      ],
    );
  }
}
