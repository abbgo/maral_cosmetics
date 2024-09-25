import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallereya toplumy'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: Divider(
            thickness: 4,
            color: Color(0xffF5F5F5),
          ),
        ),
      ),
    );
  }
}
