import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star_and_price.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductData extends StatelessWidget {
  const ProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
          style: TextStyle(
            fontFamily: 'HeyWowRegular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ProductStarAndPrice(
              fontSizePrice: 16,
              fontSizeOldPrice: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              color: defaultLightColor,
              child: Text(
                '-30%',
                style: TextStyle(
                  color: defaultColor,
                  fontFamily: 'HeyWowRegular',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
