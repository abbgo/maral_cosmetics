import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/product_card/product_card.dart';

class SimilarProducts extends StatelessWidget {
  const SimilarProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Meňzeşler', style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProductCardStatic(),
              ProductCardStatic(),
            ],
          ),
        ],
      ),
    );
  }
}
