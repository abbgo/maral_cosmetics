import 'dart:convert';

import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:http/http.dart' as http;

class ProductApiService {
  // fetch products -------------------------------------------------------
  Future<ResultProduct> fetchProducts({
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
      http.Response response = await http.get(uri);
      var jsonData = json.decode(response.body);

      if (response.statusCode == 200 && jsonData['success']) {
        int pageCount = jsonData['data']['pageCount'] as int;

        if (jsonData['data']['rows'] == []) {
          return ResultProduct(
            products: const [],
            pageCount: pageCount,
            error: '',
          );
        }

        var data = jsonData['data']['rows'] as List;
        return ResultProduct(
          products: data
              .map<Product>((propJson) => Product.fromJson(propJson))
              .toList(),
          pageCount: pageCount,
          error: '',
        );
      }
      return const ResultProduct(products: [], pageCount: 0, error: '');
    } catch (e) {
      rethrow;
    }
  }
}
