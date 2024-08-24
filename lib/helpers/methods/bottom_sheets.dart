import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/parts/contact_phones/contact_phones.dart';
import 'package:maral_cosmetics/pages/parts/select_language/select_language.dart';

showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const SelectLanguage(),
  );
}

showPhonesBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const ContactPhones(),
  );
}

showLogOutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const ContactPhones(),
  );
}
