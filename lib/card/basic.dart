import 'package:flutter/material.dart';
class Basic extends StatelessWidget{
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Card(
          child: Column(
            children: [
              Text("Burger"),
              Text("Cheese Burger"),
              Text("150"),
            ],
          ),
        ),
      ),
    );
  }
}