import 'package:flutter/material.dart';

void main() {
  runApp(MyColumnApp());
}

class MyColumnApp extends StatelessWidget {
  const MyColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Top Sellers"),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              
              Row
                (children: [
                Text("1- "),
                Expanded(child: Text("Fırat Suyu Kan Akıyor - Yaşar KEMAL    ")),
                ElevatedButton(onPressed: () {

                }, child: Text("Satın al")),
                Spacer(),
                
              ],), Row
                (children: [
                Text("2- "),
                Expanded(child: Text("Onuncu Köy - Fakir BAYKURT    ")),
                ElevatedButton(onPressed: () {

                }, child: Text("Satın al")),
                Spacer(),

              ],), Row
                (children: [
                Text("3- "),
                Expanded(child: Text("Suç Ve Ceza - Dostoyevski     ")),
                ElevatedButton(onPressed: () {

                }, child: Text("Satın al")),
                Spacer(),

              ],), Row
                (children: [
                Text("4- "),
                Expanded(child: Text("Beyaz Geceler - Dostoyevski     ")),
                ElevatedButton(onPressed: () {

                }, child: Text("Satın al")),
                Spacer(),

              ],), Row
                (children: [
                Text("5- "),
                Expanded(child: Text("Demir Ökçe - Jack LONDON    ")),
                ElevatedButton(onPressed: () {

                }, child: Text("Satın al")),
                Spacer(),

              ],)

              /*
              Text("1- Fırat Suyu Kan Akıyor - Yaşar KEMAL"),
              Text("2- Onuncu Köy - Fakir BAYKURT"),
              Text("3- Suç Ve Ceza - Dostoyevski"),
              Text("4- Beyaz Geceler - Dostoyevski"),
              Text("5- Demir Ökçe - Jack LONDON"),
               */

            ],
          ),
        ),
      ),
    );
  }
}
