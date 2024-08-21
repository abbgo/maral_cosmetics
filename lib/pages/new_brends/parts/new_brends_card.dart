import 'package:flutter/material.dart';

class NewBrendsCard extends StatelessWidget {
  const NewBrendsCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.8),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            height: 120,
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),
        ),
        Container(
          width: 135,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.5),
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Text(
            'Customers Says',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
