import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:maral_cosmetics/pages/product/parts/product_categories_and_star.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image.dart';
import 'package:maral_cosmetics/pages/product/parts/product_page_app_bar.dart';
import 'package:maral_cosmetics/pages/product/parts/product_price_and_order_button.dart';
import 'package:maral_cosmetics/pages/product/parts/similar_products.dart';

class ProductPage extends StatelessWidget {
  const ProductPage(
      {super.key, required this.forBasket, required this.product});

  final bool forBasket;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const ProductPageAppBar(),
            ProductImage(product: product),
            const SizedBox(height: 12),
            const ProductCategoriesAndStar(),
            const SizedBox(height: 12),
            Text(
              product.name,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 12),
            const ProductPriceAndOrderButton(),
            const SizedBox(height: 12),
            ProductDescription(
              title: 'Barada',
              description: product.description,
            ),
            SimilarProducts(productID: product.id),
          ],
        ),
      ),
    );
  }
}
