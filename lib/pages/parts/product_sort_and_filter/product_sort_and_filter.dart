import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter/parts/product_filter_button.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter/parts/product_sort_button.dart';

class ProductSortAndFilter extends StatelessWidget {
  const ProductSortAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductSortButton(),
              SizedBox(width: 15),
              ProductFilterButton(),
            ],
          ),
          SizedBox(height: 16),
          Divider(thickness: 4, color: Color(0xffF5F5F5)),
        ],
      ),
    );
  }
}
