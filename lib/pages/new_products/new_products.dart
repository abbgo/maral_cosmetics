import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/new_products/parts/new_products_gridview.dart';

class NewProductsPage extends StatelessWidget {
  const NewProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('In taze gosulanlar'),
        bottom: appBarBottomMethod(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: NewProductsGridview(),
      ),
    );
  }
}
