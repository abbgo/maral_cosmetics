import 'package:flutter/material.dart';

class HomeDiscountProductButtons extends StatelessWidget {
  const HomeDiscountProductButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
      child: ListTile(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star),
            Text('3.0'),
            Icon(Icons.favorite),
          ],
        ),
        trailing: Icon(Icons.local_mall),
      ),
    );
  }
}
