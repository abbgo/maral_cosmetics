import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:maral_cosmetics/helpers/static_data.dart';
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
      if (response.statusCode == 200 && jsonData['success']) {
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
