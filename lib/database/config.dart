import 'package:maral_cosmetics/database/sql_queries.dart';
import 'package:sqflite/sqflite.dart';

late Database db;

Future<void> createDB() async {
  var dbPath = await getDatabasesPath();
  final path = '$dbPath/maral_cosmetics.db';

  db = await openDatabase(path, version: 1, onCreate: (db, version) {
    db.execute(searchsTable);
    return;
  });
}
