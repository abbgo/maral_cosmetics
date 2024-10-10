import 'package:equatable/equatable.dart';

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

class ResultPhone extends Equatable {
  final List<PhoneModel>? phones;
  final String error;

  const ResultPhone({this.phones, required this.error});

  factory ResultPhone.defaultResult() {
    return const ResultPhone(phones: null, error: '');
  }

  @override
  List<Object?> get props => [phones, error];
}
