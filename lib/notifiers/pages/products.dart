import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryIDsNotifier extends StateNotifier<List<String>> {
  CategoryIDsNotifier() : super([]);

  Future<void> setCategoryID(String id) async {
    state = [];
    state = [...state, id];
  }
}

class BrandIDsNotifier extends StateNotifier<List<String>> {
  BrandIDsNotifier() : super([]);

  Future<void> setBrandID(String id) async {
    state = [];
    state = [...state, id];
  }
}
