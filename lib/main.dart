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
      body: Center(
        child: Counter(),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.00, vertical: 0.0)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.people),
                color: Colors.white,
                tooltip: "Profile",

                //padding: const EdgeInsets.all(20.00)
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag),
                color: Colors.white,
                tooltip: "Cart",
                padding: const EdgeInsets.symmetric(
                    horizontal: 60.00, vertical: 0.0),
                //padding: const EdgeInsets.all(20.00)
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                color: Colors.white,
                tooltip: "Settings",

                // padding: const EdgeInsets.all(20.00)
              ),
            ],
          )),
    ));
  }
}

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _counterState();
}

class _counterState extends State<Counter> {
  int number = 0;

  void increments() {
    setState(() {
      number++;
    });
  }

  void decrements() {
    setState(() {
      if (number > 0) {
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(onPressed: increments, child: Text("Increment")),
        const SizedBox(width: 16),
        Text('Count: $number'),
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        ElevatedButton(onPressed: decrements, child: Text("Decrement")),
      ],
    );
  }
}
