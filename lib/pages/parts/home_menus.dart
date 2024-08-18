import 'package:flutter/material.dart';
import 'package:maral_cosmetics/static_variables/static_variables.dart';

class HomeMenus extends StatelessWidget {
  const HomeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: homeMenus
            .map(
              (e) => Container(
                height: 27,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(e, style: const TextStyle(fontSize: 14)),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
