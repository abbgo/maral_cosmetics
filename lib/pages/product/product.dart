import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_categories_and_star.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image.dart';
import 'package:maral_cosmetics/pages/product/parts/product_page_app_bar.dart';
import 'package:maral_cosmetics/pages/product/parts/product_price_and_order_button.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.forBasket});

  final bool forBasket;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const ProductPageAppBar(),
            const ProductImage(),
            const SizedBox(height: 12),
            const ProductCategoriesAndStar(),
            const SizedBox(height: 12),
            const Text(
              'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 12),
            const ProductPriceAndOrderButton(),
            const SizedBox(height: 12),
            ProductDescription(
              title: 'Dusundirilisi',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
              scrollController: _scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
