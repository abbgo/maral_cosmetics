import 'dart:convert';

import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:http/http.dart' as http;

class FavoriteApiService {
  // add or remove favorite product ------------------------------------------------------------
  Future<bool> addOrRemoveFavorite(String accessToken, String productID) async {
    Uri uri = Uri.parse('$apiUrl/products/like/$productID');

    try {
      http.Response response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $accessToken',
          'Content-Type': 'application/json',
        },
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
