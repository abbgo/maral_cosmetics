import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class NewBrendsPage extends StatelessWidget {
  const NewBrendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('In taze gosulanlar'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: newBrends.length,
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              newBrends[index],
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 15),
        ),
      ),
    );
  }
}
