import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: Color(0xffCCCCCC)),
    );

    return const TextField(
      cursorColor: Color(0xffCCCCCC),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Color(0xff666666),
          fontFamily: 'Inter',
        ),
      ),
    );
  }
}
