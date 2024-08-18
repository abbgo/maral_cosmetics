import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class HomeNewBrendsSliderBody extends StatelessWidget {
  const HomeNewBrendsSliderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        itemCount: homeBrendSliders.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(
            left: index == 0 ? 10 : 0,
            right: index == homeBrendSliders.length - 1 ? 10 : 0,
          ),
          child: Stack(
            alignment: const Alignment(0, 0.8),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  homeBrendSliders[index],
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 105,
                height: 20,
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Customers Says',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }
}
