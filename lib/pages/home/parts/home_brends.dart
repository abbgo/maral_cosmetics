import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';

class HomeBrends extends StatelessWidget {
  const HomeBrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeTitle(text: 'Hyzmatdas brendler', onTap: () {}),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: homeBrends.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                margin: EdgeInsets.only(
                  left: index == 0 ? 10 : 0,
                  right: index == homeBrends.length - 1 ? 10 : 0,
                ),
                width: 130,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Image.asset(homeBrends[index]),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
