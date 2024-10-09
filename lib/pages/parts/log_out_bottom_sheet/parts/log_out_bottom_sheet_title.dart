import 'package:flutter/material.dart';

class LogOutBottomSheetTitle extends StatelessWidget {
  const LogOutBottomSheetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Siz hakykyatdanam cykmak isleyanizmi ?',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'HeyWowRegular',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
