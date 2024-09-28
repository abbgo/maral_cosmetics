import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/pages/product.dart';
import 'package:maral_cosmetics/pages/parts/product_card/parts/product_star.dart';

class ProductCategoriesAndStar extends StatelessWidget {
  const ProductCategoriesAndStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            productCategoryButtonMethod(
                'Sowgatlar', const Color(0xffF5F5F5), null),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff818181),
                size: 18,
              ),
            ),
            productCategoryButtonMethod('Agryny kesiji',
                const Color(0xfff2edef), const Color(0xff824D6A)),
          ],
        ),
        const ProductStar(starSize: 16, textSize: 16),
      ],
    );
  }
}
