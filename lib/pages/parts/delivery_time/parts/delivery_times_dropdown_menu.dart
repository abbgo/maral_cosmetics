import 'package:flutter/material.dart';
import 'package:maral_cosmetics/examples/static_variables.dart';
import 'package:maral_cosmetics/styles/colors.dart';

class DeliveryTimesDropdownMenu extends StatelessWidget {
  const DeliveryTimesDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonFormField<String>(
        iconEnabledColor: defaultColor,
        iconDisabledColor: defaultColor,
        style: TextStyle(fontFamily: 'HeyWowRegular', color: defaultColor),
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
      ),
    );
  }
}
