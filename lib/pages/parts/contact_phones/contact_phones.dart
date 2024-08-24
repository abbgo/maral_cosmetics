import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/contact_phones/parts/contact_phones_list_tile.dart';

class ContactPhones extends StatelessWidget {
  const ContactPhones({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xffF8F2F5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xff824D6A),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          const ContactPhonesListTile(text: '+993 62674323'),
          const Divider(color: Color(0xffD9D9D9)),
          const ContactPhonesListTile(text: '+993 63345623'),
        ],
      ),
    );
  }
}
