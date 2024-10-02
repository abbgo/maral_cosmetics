import 'package:flutter/material.dart';

class ProductFilterButton extends StatelessWidget {
  const ProductFilterButton(
      {super.key, required this.text, required this.onTap});

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(text),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
