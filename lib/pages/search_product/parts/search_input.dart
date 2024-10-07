import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color(0xfff2ebee)),
    );

    return const SizedBox(
      height: 40,
      child: TextField(
        cursorColor: Color(0xffCCCCCC),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Color(0xfff6f1f3),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          hintText: 'SEARCH',
          hintStyle: TextStyle(fontSize: 14),
          prefixIcon: Icon(
            Icons.search,
            size: 22,
            color: Color(0xffA16F8A),
          ),
        ),
      ),
    );
  }
}
