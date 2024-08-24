import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Biz barada'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            Text(
              'Customers Says about our Servise fact that at its layout.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. 

PЕКВИЗИТЫ ОПЕРАТОРА
Оператор:
Хозяйственное Общество «MARALCOSMETICS»
+993 62 00 00 00 
Адрес:
г. Ашхабад, ул. 1972 (Ататюрка), 82
ИНН 101211007415''',
              style: TextStyle(fontFamily: 'HeyWowRegular'),
            ),
          ],
        ),
      ),
    );
  }
}
