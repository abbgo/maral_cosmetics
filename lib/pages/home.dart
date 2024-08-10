import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/logo.jpg", height: kToolbarHeight),
            const Text('Search Field'),
            Container(
              width: kToolbarHeight,
              height: kToolbarHeight,
              decoration: BoxDecoration(
                color: defaultLightColor,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  // Top-left shadow
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(-5, -5),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  ),
                  // Bottom-right shadow
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    offset: const Offset(5, 5),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: const Center(child: Icon(Icons.ad_units)),
            )
          ],
        ),
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}
