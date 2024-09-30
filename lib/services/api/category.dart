import 'dart:convert';

import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/category.dart';
import 'package:http/http.dart' as http;

class CategoryApiService {
  // fetch categories -------------------------------------------------------
  Future<ResultCategory> fetchCategories({
    required int page,
    required int pageSize,
    required String search,
    required String lang,
  }) async {
    Uri uri = Uri.parse('$apiUrl/category').replace(
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
        int pageCount = jsonData['data']['pageCount'] as int;

        if (jsonData['data']['rows'] == []) {
          return ResultCategory(
            categories: const [],
            pageCount: pageCount,
            error: '',
          );
        }

        var data = jsonData['data']['rows'] as List;
        return ResultCategory(
          categories: data
              .map<CategoryModel>(
                  (propJson) => CategoryModel.fromJson(propJson))
              .toList(),
          pageCount: pageCount,
          error: '',
        );
      }
      return const ResultCategory(categories: [], pageCount: 0, error: '');
    } catch (e) {
      rethrow;
    }
  }
}
