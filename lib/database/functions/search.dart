import 'package:maral_cosmetics/database/config.dart';
import 'package:sqflite/sqflite.dart';

Future<void> createSearch(String search) async {
  if (db.isOpen) {
    await db.insert(
      'searchs',
      {'search': search},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

Future<List<String>> getSearchs() async {
  if (db.isOpen) {
    List<String> searchs = [];

    List<Map<String, dynamic>>? maps =
        await db.rawQuery("SELECT search FROM searchs");

    for (var map in maps) {
      String id = map['search'] as String;
      searchs.add(id);
    }

    return searchs;
  }
  return [];
}

Future<void> removeSearch(String search) async {
  if (db.isOpen) {
    await db.rawDelete("DELETE FROM searchs WHERE search='search'");
  }
}
