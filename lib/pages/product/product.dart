import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_buttons.dart';
import 'package:maral_cosmetics/pages/product/parts/product_data.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider_and_list.dart';
import 'package:maral_cosmetics/pages/product/parts/product_page_app_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.forBasket});

  final bool forBasket;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const ProductPageAppBar(),
            const ProductImageSliderAndList(),
            const ProductData(),
            const SizedBox(height: 22),
            ProductButtons(forBasket: forBasket),
            const SizedBox(height: 22),
            const ProductDescription(
              title: 'Dusundirilisi',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
            ),
          ],
        ),
      ),
    );
  }
}
