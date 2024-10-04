import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maral_cosmetics/models/image.dart';
import 'package:maral_cosmetics/pages/product/parts/product_image_slider.dart';
import 'package:maral_cosmetics/styles/colors.dart';

showProductImages(BuildContext context, List<BlurImage> images) {
  showDialog(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.only(left: 20, top: 70, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: defaultLightColor,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Color(0xff9A4D76),
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 160),
              ProductImageSlider(images: images, forZoom: true),
            ],
          ),
        ),
      );
    },
  );
}

Container productCategoryButtonMethod(
    String text, Color color, Color? textColor) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: color,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: textColor,
      ),
    ),
  );
}
