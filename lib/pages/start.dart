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
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/logo.jpg")),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/traced.png",
                  fit: BoxFit.cover,
                  color: const Color(0xffF2CFE2),
                ),
                const Positioned(
                  bottom: 30,
                  child: Text(
                    'ISLEGE GÖRÄ KAMILLEŞ...',
                    style: TextStyle(fontSize: 20, color: Color(0xffA16F8A)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
