// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text("Flutter Example"),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text("Hello world!"),
          Text("Hello world!"),
          Text("Hello world!"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.white,
                  tooltip: "Home",
                  padding: const EdgeInsets.all(20.00)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.people),
                  color: Colors.white,
                  tooltip: "Profile",
                  padding: const EdgeInsets.all(20.00)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag),
                  color: Colors.white,
                  tooltip: "Cart",
                  padding: const EdgeInsets.all(20.00)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                  tooltip: "Settings",
                  padding: const EdgeInsets.all(20.00)),
            ],
          )),
    ));
  }
}
