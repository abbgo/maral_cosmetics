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
