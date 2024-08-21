import 'package:flutter/material.dart';

class OneNewsPage extends StatelessWidget {
  const OneNewsPage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Habarlar'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: const Color(0xffF8F8F8),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    image,
                    height: 200,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
