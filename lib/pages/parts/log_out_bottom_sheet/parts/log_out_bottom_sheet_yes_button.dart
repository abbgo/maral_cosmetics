import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/database/functions/user.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/providers/local_storadge.dart';
import 'package:maral_cosmetics/providers/pages/login_and_register.dart';

class LogOutBottomSheetYesButton extends ConsumerWidget {
  const LogOutBottomSheetYesButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool load = ref.watch(loadLogOutProvider);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff824D6A),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: load
          ? null
          : () async {
              ref.read(loadLogOutProvider.notifier).state = true;
              await ref.read(accessTokenProvider.notifier).update('');
              await removeUser();
              ref.read(loadLogOutProvider.notifier).state = false;
              if (context.mounted) Navigator.pop(context);
            },
      child: load
          ? loadWidget
          : const Text(
              'Hawa',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
    );
  }
}
