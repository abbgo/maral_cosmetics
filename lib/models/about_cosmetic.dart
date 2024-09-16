import 'package:maral_cosmetics/models/image.dart';

class AboutCosmetic {
  final String id, author, createdAt;
  final BlurImage image;

  AboutCosmetic({
    required this.id,
    required this.image,
    required this.author,
    required this.createdAt,
  });

  factory AboutCosmetic.fromJson(Map<String, dynamic> json) {
    return AboutCosmetic(
      id: json['id'],
      image: BlurImage.fromJson(json['image']),
      author: json['author'],
      createdAt: json['createdAt'],
    );
  }
}
