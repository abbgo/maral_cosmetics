import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:maral_cosmetics/helpers/methods/pages/product.dart';

class ProductCategoriesAndStar extends StatelessWidget {
  const ProductCategoriesAndStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                productCategoryButtonMethod(
                    'Sowgatlar', const Color(0xffF5F5F5), null),
                productCategoryButtonMethod('Agryny kesiji',
                    const Color(0xfff2edef), const Color(0xff824D6A)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
