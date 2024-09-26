import 'package:flutter/material.dart';

class ProductFavoriteButton extends StatelessWidget {
  const ProductFavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
