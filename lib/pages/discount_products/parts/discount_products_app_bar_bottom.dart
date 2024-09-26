import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_filter_button.dart';
import 'package:maral_cosmetics/pages/discount_products/parts/discount_products_sort_button.dart';

class DIscountPageAppBarBottom extends StatelessWidget {
  const DIscountPageAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DiscountProductsSortButton(),
              SizedBox(width: 15),
              DiscountProductsFilterButton(),
            ],
          ),
          SizedBox(height: 16),
          Divider(thickness: 4, color: Color(0xffF5F5F5)),
        ],
      ),
    );
  }
}
