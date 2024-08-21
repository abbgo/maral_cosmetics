import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider_and_list.dart';
import 'package:maral_cosmetics/pages/product/parts/product_page_app_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
          top: screenProperties(context).topSafeArea,
          right: 10,
        ),
        child: const Column(
          children: [
            ProductPageAppBar(),
            ProductImageSliderAndList(),
          ],
        ),
      ),
    );
  }
}
