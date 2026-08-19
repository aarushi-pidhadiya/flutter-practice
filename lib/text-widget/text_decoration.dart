import 'package:flutter/material.dart';

// This class demonstrates TextDecoration.
class TextDecorationExample extends StatelessWidget {
  const TextDecorationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("Text Decoration"),
        ),

        body: Column(
          children: [

            // Underline the text.
            Text(
              "Underline",
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),

            // Draw a line through the text.
            Text(
              "Line Through",
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
              ),
            ),

            // Draw a line above the text.
            Text(
              "Overline",
              style: TextStyle(
                decoration: TextDecoration.overline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}