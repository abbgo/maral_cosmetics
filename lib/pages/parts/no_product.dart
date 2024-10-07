import 'package:flutter/material.dart';

class NoProduct extends StatelessWidget {
  const NoProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.block,
            size: 82,
            color: Color(0xffA16F8A),
          ),
          Text(
            'Haryt yok',
            style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
          ),
        ],
      ),
    );
  }
}
