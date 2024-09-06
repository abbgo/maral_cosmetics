import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/news.dart';

class HomeNewsMainImage extends StatelessWidget {
  const HomeNewsMainImage({super.key, required this.news});

  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Stack(
        alignment: const Alignment(-0.85, 0.85),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/examples/news_main.png'),
          ),
          Container(
            width: 175,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(.5),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customers Says about our Servise',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '04.08.2024',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'HeyWowRegular',
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
