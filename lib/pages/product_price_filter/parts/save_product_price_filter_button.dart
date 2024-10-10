import 'package:flutter/material.dart';

class SaveProductPriceFilterButton extends StatelessWidget {
  const SaveProductPriceFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff824D6A),
        ),
        onPressed: () {},
        child: const Text(
          'OK',
          style: TextStyle(fontFamily: 'inter'),
        ),
      ),
    );
  }
}
