import 'package:maral_cosmetics/database/config.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:sqflite/sqflite.dart';

Future<void> createOrUpdateUser(User user) async {
  if (db.isOpen) {
    int count = 0;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) as count FROM user');

    if (result.isNotEmpty) {
      count = result.first['count'] as int;
      if (count > 0) {
        await db.rawDelete('DELETE FROM user');
      }
    }

    await db.insert(
      'user',
      user.toJsonForDB(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
