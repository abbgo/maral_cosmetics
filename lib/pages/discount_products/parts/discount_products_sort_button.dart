import 'package:flutter/material.dart';

class DiscountProductsSortButton extends StatelessWidget {
  const DiscountProductsSortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffE0E0E0)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.swap_vert),
            SizedBox(width: 10),
            Text(
              'Tertiple',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'HeyWowRegular',
              ),
            )
          ],
        ),
      ),
    );
  }
}
