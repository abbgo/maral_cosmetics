import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/shimmer_widgets/home_news/parts/home_news_card.dart';

class HomeNewsListShimmer extends ConsumerWidget {
  const HomeNewsListShimmer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) => const HomeNewsCardShimmer(),
      ),
    );
  }
}
