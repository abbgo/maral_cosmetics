import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Dusundirilisi',
        style: TextStyle(
          fontFamily: 'HeyWowRegular',
          color: defaultColor,
        ),
      ),
      children: const [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. ',
            style: TextStyle(fontFamily: 'HeyWowRegular'),
          ),
        )
      ],
    );
  }
}
