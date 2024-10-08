import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/providers/parts/password_input.dart';

class ConfirmPasswordInput extends ConsumerWidget {
  const ConfirmPasswordInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(color: Color(0xff79747E)),
    );

    bool showPassword = ref.watch(showConfirmPasswordProvider);

    return TextFormField(
      cursorColor: Colors.black,
      style: const TextStyle(fontFamily: 'Inter'),
      obscureText: !showPassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        labelText: ' Açar sözi tasyklaň ',
        labelStyle: const TextStyle(color: Colors.black, fontFamily: 'Inter'),
        suffixIcon: GestureDetector(
          onTap: () => ref.read(showConfirmPasswordProvider.notifier).state =
              !showPassword,
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xff9D9D9D),
          ),
        ),
      ),
    );
  }
}
