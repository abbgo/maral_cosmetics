import 'package:flutter/material.dart';

class HomeNewsCardShimmer extends StatelessWidget {
  const HomeNewsCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SizedBox(
        height: 105,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(height: 100, width: 120, color: Colors.black),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.black,
                    height: 20,
                    width: double.maxFinite,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    color: Colors.black,
                    height: 20,
                    width: double.maxFinite,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    color: Colors.black,
                    height: 20,
                    width: double.maxFinite,
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
