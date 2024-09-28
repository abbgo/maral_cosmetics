import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';

showProductImages(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: const Dialog(child: ProductImageSlider()),
      );
    },
  );
}
