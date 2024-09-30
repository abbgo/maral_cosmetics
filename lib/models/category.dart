import 'package:equatable/equatable.dart';
import 'package:maral_cosmetics/models/image.dart';

class CategoryModel {
  final String id, name;
  final BlurImage image;
  final List<CategoryModel> subcategories;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.subcategories,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      image: BlurImage.fromJson(json['image']),
      subcategories: json['subcategories'] == []
          ? []
          : List<CategoryModel>.from(
              json['subcategories'].map(
                (categoryJson) => CategoryModel.fromJson(categoryJson),
              ),
            ),
    );
  }
}

class ResultCategory extends Equatable {
  final List<CategoryModel>? categories;
  final int? pageCount;
  final String error;

  const ResultCategory({
    this.categories,
    this.pageCount,
    required this.error,
  });

  factory ResultCategory.defaultResult() {
    return const ResultCategory(
      categories: null,
      pageCount: null,
      error: '',
    );
  }

  @override
  List<Object?> get props => [categories, pageCount, error];
}
