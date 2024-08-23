import 'package:flutter/material.dart';

class BasketBottomPart extends StatelessWidget {
  const BasketBottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xffFAF8F9),
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xffF1E0E9), width: 1),
        ),
      ),
      child: const Column(
        children: [
          Text(
            'Minimum sargyt 10 manat.Sargyt etmek ucin yene 30 manat gosmaly.',
            style: TextStyle(fontFamily: 'HeyWowRegular'),
          )
        ],
      ),
    );
  }
}
