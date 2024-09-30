import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/basket/parts/basket_bottom_part.dart';
import 'package:maral_cosmetics/pages/parts/customer/customer.dart';
import 'package:maral_cosmetics/pages/parts/delivery_time/delivery_time.dart';
import 'package:maral_cosmetics/pages/parts/delivery_type/delivery_type.dart';
import 'package:maral_cosmetics/pages/parts/payment_contact/payment_contact.dart';
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
            ),
          ),
          SizedBox(height: 20),
          PaymentContact(),
          SizedBox(height: 20),
          BasketBottomPart(forBasket: false, btnText: 'Sargyt et'),
        ],
      ),
    );
  }
}
