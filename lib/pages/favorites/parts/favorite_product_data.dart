import 'package:flutter/material.dart';

class FavoriteProductData extends StatelessWidget {
  const FavoriteProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Text(
            'FLORMAR Göz üçin galam Eyeliner Pencil (Ultra Black)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'HeyWowRegular',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
