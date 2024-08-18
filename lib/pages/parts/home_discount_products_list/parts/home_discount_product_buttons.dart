import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductButtons extends StatelessWidget {
  const HomeDiscountProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                size: 16,
                color: Color(0xffFFBB00),
              ),
              const SizedBox(width: 2),
              Text(
                '3.0',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'HeyWowRegular',
                    color: defaultColor),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.favorite_outline, size: 16),
            ],
          ),
          const Icon(Icons.local_mall_outlined, size: 16),
        ],
      ),
    );
  }
}
