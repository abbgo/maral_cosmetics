import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PriceInput extends StatelessWidget {
  const PriceInput({
    super.key,
    required this.title,
    required this.hintText,
    required this.ctrl,
  });

  final String title, hintText;
  final TextEditingController ctrl;

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Color(0xffCCCCCC)),
    );

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          TextField(
            controller: ctrl,
            cursorColor: const Color(0xffCCCCCC),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xff666666),
                fontFamily: 'Inter',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
