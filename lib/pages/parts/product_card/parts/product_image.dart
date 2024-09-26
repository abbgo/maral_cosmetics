import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/product_image.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(image, fit: BoxFit.cover, height: 140),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Row(
            children: [
              imageIconMethod('54%', Colors.red),
              const SizedBox(width: 2),
              imageIconMethod('Taze', Colors.green),
            ],
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.favorite_outline,
                color: Color(0xff824D6A),
                size: 22,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
