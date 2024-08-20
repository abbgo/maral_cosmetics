import 'package:flutter/material.dart';

class NewBrendsPage extends StatelessWidget {
  const NewBrendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('In taze gosulanlar'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text('New brends'),
      ),
    );
  }
}
