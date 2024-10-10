import 'dart:convert';

import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/phone.dart';
import 'package:http/http.dart' as http;

class PhoneApiService {
  // fetch phones -------------------------------------------------------
  Future<ResultPhone> fetchPhones(String type) async {
    Uri uri = Uri.parse('$apiUrl/api/phones')
        .replace(queryParameters: {'type': type});
    try {
      http.Response response = await http.get(uri);
      var jsonData = json.decode(response.body);

      if (response.statusCode == 200 && jsonData['success']) {
        var data = jsonData['data']['rows'] as List;
        return ResultPhone(
          phones: data
              .map<PhoneModel>((propJson) => PhoneModel.fromJson(propJson))
              .toList(),
          error: '',
        );
      }
      return const ResultPhone(phones: [], error: '');
    } catch (e) {
      rethrow;
    }
  }
}
