import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:maral_cosmetics/pages/parts/category_card/parts/category_card_image.dart';
import 'package:maral_cosmetics/pages/parts/category_card/parts/sub_category_card.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          widget.category.isExpanded ? const Color(0xfffffafc) : Colors.white,
      child: ExpansionTile(
        shape: const Border.symmetric(),
        tilePadding: const EdgeInsets.all(0),
        childrenPadding: const EdgeInsets.all(0),
        leading: CategoryCardImage(image: widget.category.image),
        trailing: AnimatedRotation(
          turns: widget.category.isExpanded ? 0.0 : -0.25,
          duration: const Duration(milliseconds: 300),
          child: const Icon(Icons.arrow_drop_down, color: Colors.black),
        ),
        title: Text(
          widget.category.name,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        children: widget.category.subcategories
            .map((e) => SubCategoryCard(subcategory: e))
            .toList(),
        onExpansionChanged: (bool expanded) {
          setState(() {
            widget.category.isExpanded = expanded;
          });
        },
      ),
    );
  }
}
