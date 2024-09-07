import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/news.dart';

class NewsApiService {
  // fetch news -------------------------------------------------------
  Future<ResultNews> fetchNews({
    required int page,
    required int pageSize,
    required String search,
  }) async {
    Uri uri = Uri.parse('$apiUrl/api/news/all').replace(
      queryParameters: {
        'pageSize': pageSize.toString(),
        'page': '$page',
        'search': search,
      },
    );

    try {
      Response response = await http.get(uri);
      var jsonData = json.decode(response.body);

      if (response.statusCode == 200 && jsonData['success']) {
        int count = jsonData['data']['count'] as int;
        int pageCount = jsonData['data']['pageCount'] as int;

        if (jsonData['data']['rows'] == []) {
          return ResultNews(
            newss: const [],
            count: count,
            pageCount: pageCount,
            error: '',
          );
        }

        var data = jsonData['data']['rows'] as List;
        return ResultNews(
          newss: data
              .map<NewsModel>((propJson) => NewsModel.fromJson(propJson))
              .toList(),
          count: count,
          pageCount: pageCount,
          error: '',
        );
      }
      return const ResultNews(newss: [], count: 0, pageCount: 0, error: '');
    } catch (e) {
      rethrow;
    }
  }
}
