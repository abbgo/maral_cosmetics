import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryIDsNotifier extends StateNotifier<List<String>> {
  CategoryIDsNotifier() : super([]);

  Future<void> addCategoryID(String id) async {
    state = [...state, id];
  }
}
