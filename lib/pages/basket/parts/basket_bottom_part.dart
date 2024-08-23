import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/payment.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class BasketBottomPart extends StatelessWidget {
  const BasketBottomPart(
      {super.key, required this.forBasket, required this.btnText});

  final bool forBasket;
  final String btnText;

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
      child: Column(
        children: [
          forBasket
              ? const Text(
                  'Minimum sargyt 10 manat.Sargyt etmek ucin yene 30 manat gosmaly.',
                  style: TextStyle(fontFamily: 'HeyWowRegular'),
                )
              : const SizedBox(),
          SizedBox(height: forBasket ? 10 : 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffF1E0E9),
                    child: Icon(Icons.local_mall_outlined, color: defaultColor),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Jemi: 34.50 m',
                    style: TextStyle(
                      fontFamily: 'HeyWowRegular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: defaultColor),
                onPressed: forBasket
                    ? () => Navigator.push(
                          context,
                          CustomPageRoute(
                            child: const PaymentPage(),
                            direction: AxisDirection.left,
                          ),
                        )
                    : () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(btnText),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward, size: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
