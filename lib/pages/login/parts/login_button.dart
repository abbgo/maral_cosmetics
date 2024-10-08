import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          backgroundColor: const Color(0xffA16F8A),
        ),
        onPressed: () {},
        child: const Text('Ulgama girmek'),
      ),
    );
  }
}
