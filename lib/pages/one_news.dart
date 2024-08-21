import 'package:flutter/material.dart';

class OneNewsPage extends StatelessWidget {
  const OneNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Habarlar'),
      ),
      body: const Center(
        child: Text('One news'),
      ),
    );
  }
}
