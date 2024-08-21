import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_about_cosmetics/home_about_cosmetics.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    image,
                    height: 200,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Customers Says about our Servise fact that at its layout.',
                  ),
                ),
                const Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
                  style: TextStyle(fontFamily: 'HeyWowRegular'),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                const Text(
                  '04.08.2024',
                  style: TextStyle(
                    fontFamily: 'HeyWowRegular',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const HomeAboutCosmetics(),
        ],
      ),
    );
  }
}
