import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/helpers/methods/parts/product_sort_button.dart';
import 'package:maral_cosmetics/pages/parts/product_sort_and_filter_buttons/parts/product_filter_or_sort_button.dart';
import 'package:maral_cosmetics/pages/product_filter/product_filter.dart';

class ProductSortAndFilterButtons extends StatelessWidget {
  const ProductSortAndFilterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductFilterOrSortButton(
                text: 'Tertiple',
                image: 'sort.png',
                onTap: () => showSortBottomSheet(context),
              ),
              const SizedBox(width: 15),
              ProductFilterOrSortButton(
                text: 'Filtrele',
                image: 'filter.png',
                onTap: () => Navigator.push(
                  context,
                  CustomPageRoute(
                    child: const ProductFilterPage(),
                    direction: AxisDirection.left,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(thickness: 4, color: Color(0xffF5F5F5)),
        ],
      ),
    );
  }
}
