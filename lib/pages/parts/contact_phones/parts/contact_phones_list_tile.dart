import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class ContactPhonesListTile extends StatelessWidget {
  const ContactPhonesListTile({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onTap: () => FlutterPhoneDirectCaller.callNumber(text),
      dense: false,
      leading: Icon(Icons.call_outlined, color: defaultColor),
      title: Text(
        text,
        style: TextStyle(fontFamily: 'HeyWowRegular', color: defaultColor),
      ),
    );
  }
}
