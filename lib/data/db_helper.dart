import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  Future<Database> getDatabase() async {
    var dbPath = await getDatabasesPath();
    var path = join(dbPath, "books.db");
    var database = openDatabase(path,version: 1, onCreate: dbOlustur);

    return database;
  }

  dbOlustur(Database db, int version) async {
    await db.execute(
        "Create table books(id integer primary key autoincrement, name text, author text, price decimal)");
  }

  Future<List> getBooks() async {
    Database db = await getDatabase();
    //Select * from books
    var result = await db.query("books");
    var len = result.length;
    var listData = List.generate(len, (index) {
      var listtemp = [];
      listtemp = [
        result[index]["id"],
        result[index]["name"],
        result[index]["author"],
        result[index]["price"],
      ];
      return listtemp;
    });
    return listData;
  }

  addBook() async {
    Database db = await getDatabase();
    Map<String, Object> item = {
      "name": "Suç Ve Ceza",
      "author": "Dostoyevski",
      "price" : 12,
    };
    db.insert("books", item);
  }
}
