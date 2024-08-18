import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_menus/parts/home_menus_child.dart';
import 'package:maral_cosmetics/static_variables/static_variables.dart';

class HomeMenus extends StatelessWidget {
  const HomeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: homeMenus.map((e) => HomeMenusChild(text: e)).toList(),
      ),
    );
  }
}
