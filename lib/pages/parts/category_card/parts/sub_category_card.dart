import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';

class SubCategoryCard extends StatelessWidget {
  const SubCategoryCard({super.key, required this.subcategory});

  final CategoryModel subcategory;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
