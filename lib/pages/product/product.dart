import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_categories_and_star.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image.dart';
import 'package:maral_cosmetics/pages/product/parts/product_page_app_bar.dart';
import 'package:maral_cosmetics/pages/product/parts/product_price_and_order_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.forBasket});

  final bool forBasket;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            ProductPageAppBar(),
            ProductImage(),
            SizedBox(height: 12),
            ProductCategoriesAndStar(),
            SizedBox(height: 12),
            Text(
              'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 12),
            ProductPriceAndOrderButton(),
            SizedBox(height: 12),
            ProductDescription(
              title: 'Barada',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
