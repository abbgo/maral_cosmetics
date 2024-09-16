import 'package:equatable/equatable.dart';
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

class ResultGallery extends Equatable {
  final List<Gallery>? galleries;
  final int? pageCount;
  final String error;

  const ResultGallery({this.galleries, this.pageCount, required this.error});

  factory ResultGallery.defaultResult() {
    return const ResultGallery(galleries: null, pageCount: null, error: '');
  }

  @override
  List<Object?> get props => [galleries, pageCount, error];
}
