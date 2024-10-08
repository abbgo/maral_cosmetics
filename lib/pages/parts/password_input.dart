import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/password_input.dart';

class PasswordInput extends ConsumerWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color(0xff79747E)),
    );

    bool showPassword = ref.watch(showPasswordProvider);

    return TextFormField(
      cursorColor: Colors.black,
      style: const TextStyle(fontFamily: 'Inter'),
      obscureText: !showPassword,
      obscuringCharacter: '*',
      decoration: const InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        labelText: ' Açar söz ',
        labelStyle: TextStyle(color: Colors.black, fontFamily: 'Inter'),
      ),
    );
  }
}
