import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/app_bar.dart';
import 'package:maral_cosmetics/pages/gallery/parts/result_gallery_part.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallereya toplumy'),
        bottom: appBarBottomMethod(),
      ),
      body: const ResultGalleryPart(),
    );
  }
}
