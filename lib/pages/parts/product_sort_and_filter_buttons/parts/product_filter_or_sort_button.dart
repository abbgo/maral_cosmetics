import 'package:flutter/material.dart';

class ProductFilterOrSortButton extends StatelessWidget {
  const ProductFilterOrSortButton({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text, image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xffE0E0E0), width: 1.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/$image'),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'HeyWowRegular',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
