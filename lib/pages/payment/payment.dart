import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/payment/parts/payment_type.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Toleg'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: const [
            PaymentType(),
          ],
        ),
      ),
    );
  }
}
