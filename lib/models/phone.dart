class PhoneModel {
  final String id, phone;

  PhoneModel({required this.id, required this.phone});

  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      id: json['id'],
      phone: json['phone'],
    );
  }
}
