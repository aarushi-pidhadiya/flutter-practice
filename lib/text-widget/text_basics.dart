import 'package:flutter/material.dart';

// This class demonstrates the basic Text widget.
class TextBasics extends StatelessWidget{
  const TextBasics({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // AppBar displays a bar at the top of the screen.
        appBar: AppBar(
          title: Text("Simple Text"),
        ),

        // Center places the Text widget in the center.
        body: Center(

          // Text widget is used to display text.
          child:Text("Hello Flutter"),
        ),
      ),
    );
  }
}