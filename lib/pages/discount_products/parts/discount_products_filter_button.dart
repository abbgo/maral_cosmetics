import 'package:flutter/material.dart';

class DiscountProductsFilterButton extends StatelessWidget {
  const DiscountProductsFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffE0E0E0), width: 1.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/filter.png'),
            const SizedBox(width: 10),
            const Text(
              'Filtrele',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'HeyWowRegular',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
