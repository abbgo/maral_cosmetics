import 'dart:convert';

import 'package:http/http.dart';
import 'package:maral_cosmetics/helpers/static_data.dart';
import 'package:http/http.dart' as http;
import 'package:maral_cosmetics/models/gallery.dart';

class GalleryApiService {
  // fetch galleris -------------------------------------------------------
  Future<ResultGallery> fetchGalleries({
    required int page,
    required int pageSize,
    required String search,
  }) async {
    Uri uri = Uri.parse('$apiUrl/gallery/all').replace(
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
          return ResultGallery(
            galleries: const [],
            pageCount: pageCount,
            error: '',
          );
        }

        var data = jsonData['data']['rows'] as List;
        return ResultGallery(
          galleries: data
              .map<Gallery>((propJson) => Gallery.fromJson(propJson))
              .toList(),
          pageCount: pageCount,
          error: '',
        );
      }
      return const ResultGallery(galleries: [], pageCount: 0, error: '');
    } catch (e) {
      rethrow;
    }
  }
}
