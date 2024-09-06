import 'package:flutter/material.dart';
import 'package:maral_cosmetics/styles/colors.dart';
import 'package:shimmer/shimmer.dart';
import 'package:maral_cosmetics/pages/parts/home_title.dart';
import 'package:maral_cosmetics/shimmer_widgets/home_news/parts/home_news_list.dart';
import 'package:maral_cosmetics/shimmer_widgets/home_news/parts/home_news_main_image.dart';

class HomeNewsShimmer extends StatelessWidget {
  const HomeNewsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: defaultColor,
      highlightColor: defaultLightColor,
      child: Column(
        children: [
          HomeTitle(
            text: 'Habarlar',
            onTap: () {},
          ),
          const HomeNewsMainImageShimmer(),
          const HomeNewsListShimmer(),
        ],
      ),
    );
  }
}
