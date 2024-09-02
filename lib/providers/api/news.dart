import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maral_cosmetics/services/api/news.dart';

final newsApiProvider = Provider<NewsApiService>((ref) => NewsApiService());
