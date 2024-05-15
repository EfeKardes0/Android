import 'package:flutter/material.dart';
import 'package:sqlornek1/data/db_helper.dart';

class ListBooks extends StatefulWidget {
  const ListBooks({super.key});

  @override
  State<ListBooks> createState() => _ListBooksState();
}

class _ListBooksState extends State<ListBooks> {
  var db_helper=DbHelper();
  List books=[];
  @override
  void initState() {
    // TODO: implement initState
    getirkitaplar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kütüphanem"),
          actions: [
            IconButton(onPressed: () {
              db_helper.addBook();
              getirkitaplar();
            }, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ],
        ),
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return ListTile(
              trailing: Text(books[index][0].toString()),
              title: Text(books[index][1]),
              subtitle: Text(books[index][2]),
              leading: Text(books[index][3].toString()),
            );
          },
        ));
  }

  Future<void> getirkitaplar() async {
     books=await db_helper .getBooks();
      setState(() {

      });
  }
}
