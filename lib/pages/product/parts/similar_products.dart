import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/result_similar_products.dart';

class SimilarProducts extends StatelessWidget {
  const SimilarProducts({super.key, required this.productID});

  final String productID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Meňzeşler', style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          ResultSimilarProducts(productID: productID),
        ],
      ),
    );
  }
}
