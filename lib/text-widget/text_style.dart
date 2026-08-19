import 'package:flutter/material.dart';

// This class demonstrates the basic Text widget.
class TextStyleExample extends StatelessWidget {
  const TextStyleExample({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // Title shown in the AppBar.
        appBar: AppBar(
          title: Text("Text Style"),
        ),
        body: Center(
          child: Text(
            "Flutter Developer",

            // TextStyle is used to customize the appearance of text.
            style: TextStyle(

              // Changes the size of the text.
              fontSize: 30,

              // Changes the color of the text.
              color: Colors.blue,

              // Makes the text bold.
              fontWeight: FontWeight.bold,

              // Makes the text italic.
              fontStyle: FontStyle.italic,

              // Adds space between individual letters.
              letterSpacing: 2,

              // Adds space between individual words.
              wordSpacing: 10,
              
            ),
          ),
        ),
      ),
    );
  }
}