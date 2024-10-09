import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id, password;
  final String name, phone;

  const User({
    required this.id,
    required this.name,
    required this.phone,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'],
      phone: json['phone'],
      password: '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'password': password,
    };
  }

  @override
  List<Object?> get props => [name, phone, password];
}
