import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_buttons.dart';
import 'package:maral_cosmetics/pages/product/parts/product_data.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider_and_list.dart';
import 'package:maral_cosmetics/pages/product/parts/product_page_app_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: const [
            ProductPageAppBar(),
            ProductImageSliderAndList(),
            ProductData(),
            SizedBox(height: 22),
            ProductButtons(),
            SizedBox(height: 22),
            ProductDescription(),
          ],
        ),
      ),
    );
  }
}
