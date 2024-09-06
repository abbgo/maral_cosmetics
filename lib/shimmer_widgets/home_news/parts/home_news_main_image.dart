import 'package:flutter/material.dart';

class HomeNewsMainImageShimmer extends StatelessWidget {
  const HomeNewsMainImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Stack(
        alignment: const Alignment(-0.85, 0.85),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(height: 200, color: Colors.black),
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
