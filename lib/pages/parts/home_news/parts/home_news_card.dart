import 'package:flutter/material.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: const Text('Customers Says about our Servise'),
      subtitle: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'It is a long established fact that   be distracted at its layout.',
          ),
          Text('04.08.2024'),
        ],
      ),
    );
  }
}
