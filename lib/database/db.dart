import 'package:app_plush_pan/models/categories.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  static const String dbName = 'categories.db';

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE categories(
            idCategory INTERGER PRIMARY KEY,
            nameCategory TEXT,
            iconCode TEXT,
            quantItems INTEGER
          )
          ''');
      },
    );
  }

  Future<void> insertCategories(Categories categories) async {
    final db = await database;
    if (db != null) {
      await db.insert('categories', categories.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } else {
      throw 'Erro: Banco de dados não inicializado corretamente.';
    }
  }

  Future<List<Categories>> getCategories() async {
    final db = await database;
    if (db != null) {
      List<Map<String, dynamic>> maps = await db.query('categories');

      List<Categories> categories = List.generate(maps.length, (i) {
        return Categories(
          idCategory: maps[i]['idCategory'],
          nameCategory: maps[i]['nameCategory'],
          iconCode: maps[i]['iconCode'],
        );
      });

      return categories;
    } else {
      throw 'Erro: Banco de dados não inicializado corretamente.';
    }
  }
}
