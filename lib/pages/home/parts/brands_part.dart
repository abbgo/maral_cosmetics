import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/brands/parts/result_brands.dart';

class BrandsPart extends StatelessWidget {
  const BrandsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Brendler'),
        ),
        Expanded(child: ResultBrandsPart()),
      ],
    );
  }
}
