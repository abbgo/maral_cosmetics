import 'package:flutter/material.dart';

class HomeNewsMainImage extends StatelessWidget {
  const HomeNewsMainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/examples/news_main.png'),
          ),
        ],
      ),
    );
  }
}
