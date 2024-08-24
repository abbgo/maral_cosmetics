import 'package:flutter/material.dart';

class LogOutBottomSheet extends StatelessWidget {
  const LogOutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(
        color: Color(0xffF8F2F5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xff824D6A),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Siz hakykyatdanam cykmak isleyanizmi?',
            style: TextStyle(
                color: Color(0xff824D6A), fontFamily: 'HeyWowRegular'),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc2a1b3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 55),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Yok',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff824D6A),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 55),
                ),
                onPressed: () {},
                child: const Text(
                  'Hawa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
