import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/database/functions/user.dart';
import 'package:maral_cosmetics/providers/api/user.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';

class LogOutBottomSheetYesButton extends ConsumerWidget {
  const LogOutBottomSheetYesButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff824D6A),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () async {
        if (await ref.read(logOutUserProvider(context).future)) {
          print('======================== true');
          await ref.read(accessTokenProvider.notifier).update('');
          await removeUser();
          if (context.mounted) Navigator.pop(context);
        }
      },
      child: const Text(
        'Hawa',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
