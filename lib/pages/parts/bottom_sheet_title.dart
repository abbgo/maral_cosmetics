import 'package:flutter/material.dart';

class BottomSheetTitle extends StatelessWidget {
  const BottomSheetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.pop(context),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Dil',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Icon(Icons.close, color: Colors.black, size: 24),
        ],
      ),
    );
  }
}
