import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: defaultLightColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              Icons.close,
              color: defaultColor,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Haryt body'),
      ),
    );
  }
}
