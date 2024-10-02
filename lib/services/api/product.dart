import 'dart:convert';

import 'package:equatable/equatable.dart';
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

class ProductParams extends Equatable {
  final List<String> categories;
  final List<String> brands;
  final num? priceFrom, priceTo;
  final String ordering, search;
  final bool? isLiked;
  final int page, pageSize;

  const ProductParams({
    required this.categories,
    required this.brands,
    this.priceFrom,
    this.priceTo,
    required this.ordering,
    required this.search,
    required this.page,
    required this.pageSize,
    this.isLiked,
  });

  @override
  List<Object?> get props => [
        categories,
        brands,
        priceFrom,
        priceTo,
        ordering,
        search,
        page,
        pageSize,
        isLiked,
      ];
}
