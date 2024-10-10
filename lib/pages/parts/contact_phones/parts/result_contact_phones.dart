import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/helpers/methods/static_methods.dart';
import 'package:maral_cosmetics/models/phone.dart';
import 'package:maral_cosmetics/pages/parts/contact_phones/parts/contact_phones_list_tile.dart';
import 'package:maral_cosmetics/pages/parts/no_result.dart';
import 'package:maral_cosmetics/providers/api/phone.dart';

class ResultContactPhones extends ConsumerWidget {
  const ResultContactPhones({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<ResultPhone> resultPhone =
        ref.watch(fetchPhonesProvider('contact'));

    return resultPhone.when(
      data: (response) {
        if (response.phones!.isEmpty) {
          return const NoResult();
        }

        List<PhoneModel> phones = response.phones!;

        return SizedBox(
          height: (60 * phones.length).toDouble(),
          child: ListView.builder(
            itemCount: phones.length,
            itemBuilder: (context, index) {
              PhoneModel phone = phones[index];
              return ContactPhonesListTile(text: phone.phone);
            },
          ),
        );
      },
      error: (error, stackTrace) => errorMethod(error),
      loading: () => loadWidget,
    );
  }
}
