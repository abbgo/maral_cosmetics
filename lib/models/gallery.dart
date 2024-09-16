import 'package:maral_cosmetics/models/image.dart';

class Gallery {
  final String id;
  final BlurImage image;

  Gallery({required this.id, required this.image});

  factory Gallery.fromJson(Map<String, dynamic> json) {
    return Gallery(
      id: json['id'],
      image: BlurImage.fromJson(json['image']),
    );
  }
}
