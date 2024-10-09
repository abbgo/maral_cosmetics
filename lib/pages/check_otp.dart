import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/functions/screen.dart';
import 'package:maral_cosmetics/helpers/methods/parts/inputs.dart';
import 'package:maral_cosmetics/models/otp_model.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:maral_cosmetics/providers/api/user.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/providers/pages/login_and_register.dart';
import 'package:maral_cosmetics/services/api/user.dart';
import 'package:pinput/pinput.dart';

class CheckOtpPage extends ConsumerWidget {
  const CheckOtpPage({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool loadOTP = ref.watch(loadOTPProvider);

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
            Text(
              loadOTP ? 'Checking...' : 'Enter the code sent to your number',
              style: const TextStyle(
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
              onCompleted: (value) async {
                if (value.isEmpty) {
                  showErrorSnackbar(context, 'Ýalňyşlyk ýüze çykdy !');
                  return;
                }

                ref.read(loadOTPProvider.notifier).state = true;

                UserParams arg = UserParams(
                  otp: OtpModel(phone: phone, otp: value),
                  context: context,
                );

                ResponseUser responseUser =
                    await ref.read(checkOTPProvider(arg).future);
                if (responseUser.user == null) {
                  if (context.mounted) {
                    showErrorSnackbar(context, 'Ýalňyşlyk ýüze çykdy !');
                    ref.read(loadOTPProvider.notifier).state = false;
                  }
                  return;
                }

                await ref
                    .read(accessTokenProvider.notifier)
                    .update(responseUser.accessToken);
                ref.read(loadOTPProvider.notifier).state = false;
              },
            ),
          ],
        ),
      ),
    );
  }
}
