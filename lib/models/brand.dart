import 'package:equatable/equatable.dart';
import 'package:maral_cosmetics/models/image.dart';

class Brand {
  final String id, name;
  final BlurImage logo;

  Brand({
    required this.id,
    required this.name,
    required this.logo,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
      logo: BlurImage.fromJson(json['logo']),
    );
  }
}

class ResultBrands extends Equatable {
  final List<Brand>? brands;
  final int? pageCount;
  final String error;

  const ResultBrands({
    this.brands,
    this.pageCount,
    required this.error,
  });

  factory ResultBrands.defaultResult() {
    return const ResultBrands(
      brands: null,
      pageCount: null,
      error: '',
    );
  }

  @override
  List<Object?> get props => [brands, pageCount, error];
}
