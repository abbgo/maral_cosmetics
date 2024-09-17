import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/pages/bottom_navigation/bottom_navigation.dart';
import 'package:maral_cosmetics/pages/onbord/onbord.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isFirstTime = ref.watch(isFirstTimeProvider);

    return isFirstTime ? const OnbordPage() : const BottomNavigationPage();
  }
}
