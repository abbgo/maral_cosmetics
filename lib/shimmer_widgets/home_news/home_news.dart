import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/home_new_brends_slider/parts/home_new_brends_slider_title.dart';
import 'package:maral_cosmetics/shimmer_widgets/home_news/parts/home_news_list.dart';
import 'package:maral_cosmetics/shimmer_widgets/home_news/parts/home_news_main_image.dart';

class HomeNewsShimmer extends StatelessWidget {
  const HomeNewsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF8F8F8),
      child: Column(
        children: [
          HomeNewBrendsSliderTitle(
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
