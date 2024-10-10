import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/call_and_sms.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:maral_cosmetics/styles/style_borders.dart';

class ContactPhonesListTile extends StatelessWidget {
  const ContactPhonesListTile({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: bottomBorder),
      child: ListTile(
        onTap: () => makePhoneCall(text),
        leading: Icon(Icons.call_outlined, color: defaultColor),
        title: Text(
          text,
          style:
              const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
