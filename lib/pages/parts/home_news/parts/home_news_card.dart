import 'package:flutter/material.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child:
                Image.asset(image, fit: BoxFit.cover, height: 90, width: 120),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customers Says about our Servise',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'It is a long established fact that   be distracted at its layout.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: 'HeyWowRegular', fontSize: 12),
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
