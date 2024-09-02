import 'package:maral_cosmetics/models/image.dart';

class NewsModel {
  final String id, createdAt, title, content;
  final BlurImage image;

  NewsModel({
    required this.id,
    required this.image,
    required this.createdAt,
    required this.title,
    required this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'],
      image: BlurImage.fromJson(json['image']),
      createdAt: json['createdAt'],
      title: json['title'],
      content: json['content'],
    );
  }
}
