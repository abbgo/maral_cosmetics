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
