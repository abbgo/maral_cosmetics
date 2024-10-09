import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';
import 'package:pinput/pinput.dart';

class CheckOtpPage extends StatelessWidget {
  const CheckOtpPage({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    final pinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontFamily: 'Inter',
      ),
      decoration: BoxDecoration(
        color: const Color(0xffA16F8A).withOpacity(.3),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SizedBox(
        height: screenProperties(context).height * .7,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter the code sent to your number',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              phone,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 60),
            Pinput(
              length: 4,
              defaultPinTheme: pinTheme,
              focusedPinTheme: pinTheme.copyWith(
                decoration: pinTheme.decoration!.copyWith(
                  border: Border.all(color: const Color(0xffA16F8A)),
                ),
              ),
              onCompleted: (value) =>
                  print('==================================== $value'),
            ),
          ],
        ),
      ),
    );
  }
}
