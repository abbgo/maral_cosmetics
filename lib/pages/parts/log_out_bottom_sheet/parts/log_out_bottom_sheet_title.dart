import 'package:flutter/material.dart';

class LogOutBottomSheetTitle extends StatelessWidget {
  const LogOutBottomSheetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Siz hakykyatdanam cykmak isleyanizmi?',
      style: TextStyle(
        color: Color(0xff824D6A),
        fontFamily: 'HeyWowRegular',
      ),
    );
  }
}
