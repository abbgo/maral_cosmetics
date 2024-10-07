import 'package:flutter/material.dart';

class SearchHistoryListTile extends StatelessWidget {
  const SearchHistoryListTile({super.key, required this.search});

  final String search;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.history,
        color: Color(0xff818181),
      ),
      title: Text(
        search,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          color: Color(0xff666666),
        ),
      ),
    );
  }
}
