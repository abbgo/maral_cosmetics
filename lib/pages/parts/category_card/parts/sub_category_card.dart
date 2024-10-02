import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/products/products.dart';

class SubCategoryCard extends StatelessWidget {
  const SubCategoryCard({super.key, required this.subcategory});

  final CategoryModel subcategory;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        CustomPageRoute(
          child: ProductsPage(category: subcategory),
          direction: AxisDirection.left,
        ),
      ),
      contentPadding: const EdgeInsets.all(0),
      tileColor: const Color.fromRGBO(255, 255, 255, 1),
      title: Text(
        subcategory.name,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const RotatedBox(
        quarterTurns: 3,
        child: Icon(Icons.arrow_drop_down),
      ),
    );
  }
}
