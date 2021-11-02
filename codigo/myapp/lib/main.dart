import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: _add,
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {},
              )
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              Text("perro"),
              Icon(Icons.add),
              Image.network(
                "https://laverdadnoticias.com/__export/1601667940437/sites/laverdad/img/2020/10/02/mikasa_ackerman_attack_on_titan.jpeg_554688468.jpeg",
                height: 90,
              ),
            ],
          ),
          drawer: Drawer(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print("perro");
            },
          ),
          backgroundColor: Colors.white),
    );
  }

  void _add() {
    print("hola mundo");
  }
}
