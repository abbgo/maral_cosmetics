import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_buttons.dart';
import 'package:maral_cosmetics/pages/parts/home_discount_products_list/parts/home_discount_product_price.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomeDiscountProductCard extends StatelessWidget {
  const HomeDiscountProductCard({
    super.key,
    required this.image,
    required this.isFisrt,
    required this.isLast,
  });

  final String image;
  final bool isFisrt, isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      width: 200,
      margin: EdgeInsets.only(left: isFisrt ? 5 : 0, right: isLast ? 5 : 0),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: defaultLightColor,
          width: .5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image, fit: BoxFit.cover, height: 120),
          ),
          const SizedBox(height: 5),
          const Text(
            'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontFamily: 'HeyWowRegular'),
          ),
          const SizedBox(height: 10),
          const HomeDiscountProductPrice(),
          const SizedBox(height: 5),
          const HomeDiscountProductButtons(),
        ],
      ),
    );
  }
}
