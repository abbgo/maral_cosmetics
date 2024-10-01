import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_sort/product_sort.dart';

showSortBottomSheet(BuildContext context) {
  showBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => const ProductSort(),
  );
}
