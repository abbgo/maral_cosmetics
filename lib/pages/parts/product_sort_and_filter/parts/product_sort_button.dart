import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/product_sort_button.dart';

class ProductSortButton extends StatelessWidget {
  const ProductSortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => showSortBottomSheet(context),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xffE0E0E0), width: 1.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/sort.png'),
              const SizedBox(width: 10),
              const Text(
                'Tertiple',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'HeyWowRegular',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
