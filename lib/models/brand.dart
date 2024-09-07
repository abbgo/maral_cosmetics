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
