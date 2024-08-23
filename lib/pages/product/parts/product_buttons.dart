import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductButtons extends StatelessWidget {
  const ProductButtons({super.key, required this.forBasket});

  final bool forBasket;

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
              size: 18,
              color: Color(0xffFFBB00),
            ),
            const SizedBox(width: 4),
            Text(
              '3.0',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HeyWowRegular',
                color: defaultColor,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: defaultLightColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(Icons.favorite, color: Color(0xff9A4D76)),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9A4D76),
              ),
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Sebede yukle'),
                  SizedBox(width: 10),
                  Icon(Icons.local_mall_outlined),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
