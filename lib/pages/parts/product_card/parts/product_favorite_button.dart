import 'package:flutter/material.dart';

class ProductFavoriteButton extends StatelessWidget {
  const ProductFavoriteButton(
      {super.key, required this.right, required this.top});

  final double right, top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
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
