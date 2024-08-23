import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/customer/customer.dart';
import 'package:maral_cosmetics/pages/parts/delivery_time/delivery_time.dart';
import 'package:maral_cosmetics/pages/parts/delivery_type/delivery_type.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/payment_type.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Toleg'),
      ),
      body: ListView(
        children: const [
          PaymentType(),
          SizedBox(height: 20),
          CustomerPart(),
          SizedBox(height: 20),
          DeliveryType(),
          SizedBox(height: 20),
          DeliveryTime(),
          SizedBox(height: 20),
          ProductDescription(),
        ],
      ),
    );
  }
}
