import 'package:equatable/equatable.dart';
import 'package:maral_cosmetics/models/image.dart';

class AboutCosmetic {
  final String id, author, title, content, createdAt;
  final BlurImage image;

  AboutCosmetic({
    required this.id,
    required this.image,
    required this.author,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  factory AboutCosmetic.fromJson(Map<String, dynamic> json) {
    return AboutCosmetic(
      id: json['id'],
      image: BlurImage.fromJson(json['image']),
      author: json['author'],
      title: json['title'],
      content: json['content'],
      createdAt: json['createdAt'],
    );
  }
}

class ResultAboutCosmetic extends Equatable {
  final List<AboutCosmetic>? aboutCosmetics;
  final AboutCosmetic? aboutCosmetic;
  final int? count;
  final int? pageCount;
  final String error;

  const ResultAboutCosmetic({
    this.aboutCosmetics,
    this.aboutCosmetic,
    this.count,
    this.pageCount,
    required this.error,
  });

  factory ResultAboutCosmetic.defaultResult() {
    return const ResultAboutCosmetic(
      aboutCosmetics: null,
      aboutCosmetic: null,
      count: null,
      pageCount: null,
      error: '',
    );
  }

  @override
  List<Object?> get props => [
        aboutCosmetics,
        aboutCosmetic,
        count,
        pageCount,
        error,
      ];
}
