import 'package:flutter/material.dart';

class ProductSortDefault extends StatelessWidget {
  const ProductSortDefault({super.key, required this.sortValue});

  final String sortValue;

  @override
  Widget build(BuildContext context) {
    return RadioListTile.adaptive(
      value: '',
      groupValue: sortValue,
      onChanged: (value) {},
    );
  }
}
