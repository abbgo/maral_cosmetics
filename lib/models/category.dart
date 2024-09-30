import 'package:equatable/equatable.dart';
import 'package:maral_cosmetics/models/image.dart';

class CategoryModel extends Equatable {
  final String id, name;
  final BlurImage image;
  final List<CategoryModel> subcategories;
  final bool isExpanded;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.subcategories,
    required this.isExpanded,
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
      isExpanded: false,
    );
  }

  CategoryModel copyWith({
    String? id,
    String? name,
    BlurImage? image,
    List<CategoryModel>? subcategories,
    bool? isExpanded,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      subcategories: subcategories ?? this.subcategories,
      isExpanded: isExpanded ?? this.isExpanded,
    );
  }

  @override
  List<Object?> get props => [id, name, image, subcategories, isExpanded];
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
