import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id, name, password;
  final String phone;

  const User({
    this.id,
    this.name,
    required this.phone,
    this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJsonForDB() {
    return {'id': id, 'name': name, 'phone': phone};
  }

  Map<String, dynamic> toJson() {
    return {'password': password, 'name': name, 'phone': phone};
  }

  Map<String, dynamic> toJsonForLogin() {
    return {'password': password, 'phone': phone};
  }

  @override
  List<Object?> get props => [id, name, phone, password];
}

class ResponseUser extends Equatable {
  final User? user;
  final String accessToken, error;

  const ResponseUser(
      {required this.user, required this.accessToken, required this.error});

  factory ResponseUser.defaultResponse() {
    return const ResponseUser(user: null, accessToken: '', error: '');
  }

  @override
  List<Object?> get props => [user, accessToken, error];
}
