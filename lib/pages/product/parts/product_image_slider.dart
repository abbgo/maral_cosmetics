import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            productSliders.first,
            fit: BoxFit.cover,
            width: double.maxFinite,
            height: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: SizedBox(
            height: 85,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  productSliders[index],
                  width: 125,
                  fit: BoxFit.cover,
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 5),
              itemCount: productSliders.length,
            ),
          ),
        ),
      ],
    );
  }
}
