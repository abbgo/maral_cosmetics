import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id, password;
  final String name, phone;

  const User({
    this.id,
    required this.name,
    required this.phone,
    this.password,
  });

  factory User.defaultUser() {
    return const User(id: '', name: '', phone: '', password: '');
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone': phone,
      'password': password,
    };
  }

  @override
  List<Object?> get props => [id, name, phone, password];
}

class ResponseUser extends Equatable {
  final User user;
  final String accessToken, error;

  const ResponseUser(
      {required this.user, required this.accessToken, required this.error});

  factory ResponseUser.defaultResponse() {
    return ResponseUser(user: User.defaultUser(), accessToken: '', error: '');
  }

  @override
  List<Object?> get props => [user, accessToken, error];
}
