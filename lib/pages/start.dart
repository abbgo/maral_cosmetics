import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/navigation.dart';
import 'package:maral_cosmetics/pages/home.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // INIT STATE ----------------------------------------------------------------
  @override
  void initState() {
    super.initState();
    _moveNextPage();
  }

  _moveNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      goToPage(context, const HomePage(), true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.jpg"),
          ],
        ),
      ),
    );
  }
}
