class BlurImage {
  final String url, hashblur;

  BlurImage({
    required this.url,
    required this.hashblur,
  });

  factory BlurImage.fromJson(Map<String, dynamic> json) {
    return BlurImage(url: json['url'], hashblur: json['hashblur']);
  }
}
