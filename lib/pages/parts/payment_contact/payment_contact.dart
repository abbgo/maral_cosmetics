import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/payment_contact/parts/comment_input.dart';
import 'package:maral_cosmetics/pages/parts/payment_contact/parts/contact_phones.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class PaymentContact extends StatelessWidget {
  const PaymentContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                'Habarlasmak ucin',
                style: TextStyle(
                  fontFamily: 'HeyWowRegular',
                  color: defaultColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.error_outline, size: 16),
            ],
          ),
          const CommentInput(),
          const ContactPhones(),
        ],
      ),
    );
  }
}
