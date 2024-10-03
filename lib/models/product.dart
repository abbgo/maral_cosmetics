import 'package:equatable/equatable.dart';
import 'package:maral_cosmetics/models/image.dart';

class Product {
  final String id, name, description;
  final List<BlurImage> images;
  final int quantity;
  final bool isLiked;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.quantity,
    required this.isLiked,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      images: List<BlurImage>.from(
        json['images'].map((imageJson) => BlurImage.fromJson(imageJson)),
      ),
      quantity: json['quantity'],
      isLiked: json['isLiked'],
    );
  }
}

class ResultProduct extends Equatable {
  final List<Product>? products;
  final int? pageCount, count;
  final String error;

  const ResultProduct(
      {this.products, this.pageCount, this.count, required this.error});

  factory ResultProduct.defaultResult() {
    return const ResultProduct(
      products: null,
      pageCount: null,
      count: null,
      error: '',
    );
  }

  @override
  List<Object?> get props => [products, pageCount, count, error];
}
