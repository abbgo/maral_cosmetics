import 'package:maral_cosmetics/database/config.dart';
import 'package:maral_cosmetics/models/user.dart';
import 'package:sqflite/sqflite.dart';

Future<void> createUser(User user) async {
  if (db.isOpen) {
    await db.insert(
      'user',
      user.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
