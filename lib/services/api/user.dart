import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/otp_model.dart';
import 'package:maral_cosmetics/models/user.dart';

class UserApiService {
  // user register ------------------------------------------------------------
  Future<bool> registerUser(User user) async {
    Uri uri = Uri.parse('$apiUrl/users/auth/sign-up');

    try {
      http.Response response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(user.toJson()),
      );

      dynamic jsonData = json.decode(response.body);
      if (jsonData['statusCode'] == 200 && jsonData['success']) {
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }

  // check otp ------------------------------------------------------------
  Future<bool> checkOTP(OtpModel otp) async {
    Uri uri = Uri.parse('$apiUrl/users/auth/check-otp');

    try {
      http.Response response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(otp.toJson()),
      );

      dynamic jsonData = json.decode(response.body);
      if (jsonData['statusCode'] == 200 && jsonData['success']) {
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}

class UserParams extends Equatable {
  final User? user;
  final OtpModel? otp;
  final BuildContext context;

  const UserParams({this.user, this.otp, required this.context});

  @override
  List<Object?> get props => [user, otp, context];
}
