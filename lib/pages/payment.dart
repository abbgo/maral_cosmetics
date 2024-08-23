import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/customer/customer.dart';
import 'package:maral_cosmetics/pages/parts/delivery_time/delivery_time.dart';
import 'package:maral_cosmetics/pages/parts/delivery_type/delivery_type.dart';
import 'package:maral_cosmetics/pages/parts/payment_contact/payment_contact.dart';
import 'package:maral_cosmetics/pages/parts/payment_type/payment_type.dart';
import 'package:maral_cosmetics/pages/product/parts/product_description.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Toleg'),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          const PaymentType(),
          const SizedBox(height: 20),
          const CustomerPart(),
          const SizedBox(height: 20),
          const DeliveryType(),
          const SizedBox(height: 20),
          const DeliveryTime(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ProductDescription(
              title: 'Ulanyş şertleri',
              description:
                  '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. 
            
            pЕКВИЗИТЫ ОПЕРАТОРА
            Оператор:
            Хозяйственное Общество «MARALCOSMETICS»
            +993 62 00 00 00 
            Адрес:
            г. Ашхабад, ул. 1972 (Ататюрка), 82
            ИНН 101211007415''',
              scrollController: _scrollController,
            ),
          ),
          const SizedBox(height: 20),
          const PaymentContact(),
        ],
      ),
    );
  }
}
