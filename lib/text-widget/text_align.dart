import 'package:flutter/material.dart';

// This class demonstrates text alignment.
class TextAlignExample extends StatelessWidget {
  const TextAlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("Text Align"),
        ),

        body: Container(

          // Gives the Text widget the full available width.
          width: double.infinity,

          child: Text(
            "Hello Flutter",

            // Places the text in the center of its available space.
            // try changing center to left,right,center,justify,start,end.
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}