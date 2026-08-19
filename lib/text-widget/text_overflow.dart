import 'package:flutter/material.dart';

// This class demonstrates maxLines and TextOverflow.
class TextOverflowExample extends StatelessWidget {
  const TextOverflowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("Text Overflow"),
        ),

        body: Padding(

          // Adds 20 pixels of space around the Text.
          padding: EdgeInsets.all(20),

          child: Text(
            "Flutter is a UI framework that allows developers "
                "to build beautiful applications for mobile, web and desktop.",

            // Allows the text to use only one line.
            maxLines: 1,

            // Shows "..." when the text doesn't fit.
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}