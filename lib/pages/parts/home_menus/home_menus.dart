import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_menus/parts/home_menus_child.dart';
import 'package:maral_cosmetics/static_variables/static_variables.dart';

class HomeMenus extends StatelessWidget {
  const HomeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: homeMenus.length,
        itemBuilder: (context, index) =>
            HomeMenusChild(text: homeMenus[index], menuIndex: index),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 10),
      ),
    );
  }
}
