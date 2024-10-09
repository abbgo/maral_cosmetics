import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class User extends Equatable {
  final String name, phone, password;
  final BuildContext context;

  const User({
    required this.name,
    required this.phone,
    required this.password,
    required this.context,
  });

  @override
  List<Object?> get props => [name, phone, password, context];
}
