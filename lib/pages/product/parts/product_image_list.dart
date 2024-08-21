import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/providers/pages/product.dart';

class ProductImageList extends ConsumerWidget {
  const ProductImageList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 85,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () =>
                ref.read(selectedProductImageProvider.notifier).state = index,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                productSliders[index],
                width: 125,
                fit: BoxFit.cover,
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 5),
          itemCount: productSliders.length,
        ),
      ),
    );
  }
}
