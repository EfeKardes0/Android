import 'package:flutter/material.dart';
import 'package:sqlornek1/screens/list_books.dart';

void main() {
  runApp( MyLibrary());
}

class MyLibrary extends StatelessWidget {
  const MyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListBooks(),);
  }
}
