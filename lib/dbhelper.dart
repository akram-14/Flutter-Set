import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqlite_api.dart';

class Databasehelper {
  static  final _databasename = "Todo.db";
  static  final _databaseversion = 1;
  static  final table = "my_table";
  static  final columnID = "id";
  static  final columnName = "todo";
  static Database? _database;
  //privateconstructor
  Databasehelper._privateConstructor();
  static final Databasehelper instance = Databasehelper._privateConstructor();
Future<Database?> get database async {
  if (_database != null) return _database;
  // creat a database if one doesn't exist
  _database = await _initDatabase();
  return _database;
}
  _initDatabase() async{
  Directory documentdirectory = await getApplicationDocumentsDirectory();
  String path = join(documentdirectory.path, _databasename);
  return await openDatabase(path,
  version: _databaseversion, onCreate:_onCreate);
  }
  Future _onCreate(Database db,int version) async {
  await db.execute('''
  CREATE TABLE $table (
  $columnID INTEGER PRIMARY KEY,
  $columnName TEXT NOT NULL
  );
  '''
  );
  }

  Future <int?> insert(Map <String,dynamic> todo ) async{
    Database? db = await instance.database;
    return await db?.insert(table, todo);
  }

  Future <int?> deleteTodo(int id ) async{
    Database? db = await instance.database;
    return await db?.delete(table, where: "id = ?", whereArgs: [id]);
  }

  Future<List<Map<String,dynamic>>?> queryAll() async{
    Database? db = await instance.database;
    return await db?.query(table);

  }
}
