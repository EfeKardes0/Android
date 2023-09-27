import 'package:flutter/material.dart';

void main() {
  runApp(Uygulama1());
}

class Uygulama1 extends StatelessWidget {
  const Uygulama1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("UYGULAMA1")),
            backgroundColor: Colors.red,
            body:  Container(
              alignment: AlignmentDirectional.center,
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
              child: Text(
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Bu ilk uygulamamız ",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 35,
                    fontWeight: FontWeight.w900),
              ),
            )));
  }
}
