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
            Icon(
              Icons.star,
              size: 15,
              color: Color(0xffFFBB00),
            ),
            SizedBox(width: 2),
            Text(
              '3.0',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(width: 10),
            Icon(Icons.favorite_outline, size: 15),
          ],
        ),
        trailing: Icon(Icons.local_mall_outlined, size: 15),
      ),
    );
  }
}
