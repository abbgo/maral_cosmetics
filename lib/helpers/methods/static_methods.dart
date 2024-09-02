import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/styles/colors.dart';

CachedNetworkImage showCachImageMethod(String image) {
  return CachedNetworkImage(
    imageUrl: '$pathUrl/$image',
    progressIndicatorBuilder: (context, url, downloadProgress) => loadWidget,
    errorWidget: (context, url, error) => errImage,
    fit: BoxFit.cover,
  );
}

Widget loadWidget =
    Center(child: CircularProgressIndicator(color: defaultColor));

Center errorMethod(Object error) {
  return Center(
    child: Text(error.toString(), textAlign: TextAlign.center),
  );
}

Image errImage = Image.asset("assets/images/logo.jpg", fit: BoxFit.cover);
