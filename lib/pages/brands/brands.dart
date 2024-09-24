import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/brands/parts/result_brands.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brendler'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Divider(
            thickness: 4,
            color: Color(0xffF5F5F5),
          ),
        ),
      ),
      body: const ResultBrandsPart(),
    );
  }
}
