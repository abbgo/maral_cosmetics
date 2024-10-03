import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:maral_cosmetics/models/product.dart';
import 'package:http/http.dart' as http;

class ProductApiService {
  // fetch products -------------------------------------------------------
  Future<ResultProduct> fetchProducts(
      {required ProductParams productParams}) async {
    Uri uri = Uri.parse('$apiUrl/products/all');

    try {
      http.Response response = await http.post(
        uri,
        headers: {'Accept-Language': productParams.lang},
        body: json.encode(productParams.toJson()),
      );
      var jsonData = json.decode(response.body);

      if (jsonData['statusCode'] == 200 && jsonData['success']) {
        int pageCount = jsonData['data']['pageCount'] as int;

        if (jsonData['data']['rows'] == []) {
          return ResultProduct(
            products: const [],
            pageCount: pageCount,
            error: '',
          );
        }

        List<dynamic> data = jsonData['data']['rows'] as List;
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
  final List<String> categories, brands;
  final num? priceFrom, priceTo;
  final String ordering, search, lang;
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
    required this.lang,
  });

  Map<String, dynamic> toJson() {
    return {
      'categories': categories,
      'brands': brands,
      'priceFrom': priceFrom,
      'priceTo': priceTo,
      'ordering': ordering,
      'search': search,
      'page': page,
      'pageSize': pageSize,
      'isLiked': isLiked,
    };
  }

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
        lang,
      ];
}
