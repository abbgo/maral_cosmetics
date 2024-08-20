import 'package:flutter/material.dart';

class HomeAboutCosmeticsCard extends StatelessWidget {
  const HomeAboutCosmeticsCard(
      {super.key,
      required this.image,
      required this.rightMargin,
      required this.leftMargin});

  final String image;
  final double rightMargin, leftMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDFDF9),
      padding: const EdgeInsets.all(6),
      margin: EdgeInsets.only(left: leftMargin, right: rightMargin),
      width: 310,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.asset(
              image,
              width: 105,
              height: 105,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customers Says about our Servise',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact ...',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontFamily: 'HeyWowRegular', fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
