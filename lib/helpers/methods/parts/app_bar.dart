import 'package:flutter/material.dart';

PreferredSize appBarBottomMethod() {
  return const PreferredSize(
    preferredSize: Size.fromHeight(4),
    child: Divider(
      thickness: 4,
      color: Color(0xffF5F5F5),
    ),
  );
}
