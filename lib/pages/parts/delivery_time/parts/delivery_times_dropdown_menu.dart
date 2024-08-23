import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';

class DeliveryTimesDropdownMenu extends StatelessWidget {
  const DeliveryTimesDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: "09:00 dan - 13:00 cenli",
      items: deliveryTimes
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
      onChanged: (value) {},
    );
  }
}
