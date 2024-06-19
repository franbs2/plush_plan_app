import 'package:app_plush_pan/domain/interfaces/models/category/categories.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  static const String dbName = 'Category.db';

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
          CREATE TABLE Category(
            idCategory INTERGER PRIMARY KEY,
            nameCategory TEXT,
            iconCode TEXT,
            quantItems INTEGER
          )
          ''');
      },
    );
  }

  Future<void> insertCategory(Category category) async {
    final db = await database;
    if (db != null) {
      await db.insert('Category', category.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } else {
      throw 'Erro: Banco de dados não inicializado corretamente.';
    }
  }

  Future<List<Category>> getCategory() async {
    final db = await database;
    if (db != null) {
      List<Map<String, dynamic>> maps = await db.query('Category');

      List<Category> category = List.generate(maps.length, (i) {
        return Category(
          idCategory: maps[i]['idCategory'],
          nameCategory: maps[i]['nameCategory'],
          iconCode: maps[i]['iconCode'],
        );
      });

      return category;
    } else {
      throw 'Erro: Banco de dados não inicializado corretamente.';
    }
  }
}
