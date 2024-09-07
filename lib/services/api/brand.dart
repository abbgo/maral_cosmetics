import 'dart:convert';

import 'package:http/http.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/brand.dart';
import 'package:http/http.dart' as http;

class BrandApiService {
  // fetch brands -------------------------------------------------------
  Future<ResultBrands> fetchBrands({
    required int page,
    required int pageSize,
    required String search,
  }) async {
    Uri uri = Uri.parse('$apiUrl/category/brands').replace(
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
        int pageCount = jsonData['data']['pageCount'] as int;

        if (jsonData['data']['rows'] == []) {
          return ResultBrands(
            brands: const [],
            pageCount: pageCount,
            error: '',
          );
        }

        var data = jsonData['data']['rows'] as List;
        return ResultBrands(
          brands:
              data.map<Brand>((propJson) => Brand.fromJson(propJson)).toList(),
          pageCount: pageCount,
          error: '',
        );
      }
      return const ResultBrands(brands: [], pageCount: 0, error: '');
    } catch (e) {
      rethrow;
    }
  }
}
