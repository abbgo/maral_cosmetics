import 'dart:convert';

import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:http/http.dart' as http;

class AboutCosmeticApiService {
  // fetch about cosmetcis -------------------------------------------------------
  Future<ResultNews> fetcAboutCosmetics({
    required int page,
    required int pageSize,
    required String search,
    required String lang,
  }) async {
    Uri uri = Uri.parse('$apiUrl/api/about-cosmetics-all').replace(
      queryParameters: {
        'pageSize': pageSize.toString(),
        'page': '$page',
        'search': search,
      },
    );

    try {
      http.Response response =
          await http.get(uri, headers: {'Accept-Language': lang});
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
