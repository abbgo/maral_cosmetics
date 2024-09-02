import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';

class NewsApiService {
  // fetch news -------------------------------------------------------
  Future<List<NewsModel>> fetchNews({
    required int page,
    required String search,
  }) async {
    Uri uri = Uri.parse('$apiUrl/shops').replace(
      queryParameters: {'limit': '10', 'page': '$page', 'search': search},
    );

    try {
      Response response = await http.get(uri);
      var jsonData = json.decode(response.body);

      if (response.statusCode == 200 && jsonData['success']) {
        if (jsonData['data'] == null) return [];
        var data = jsonData['data'] as List;
        return data
            .map<NewsModel>((propJson) => NewsModel.fromJson(propJson))
            .toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }
}
