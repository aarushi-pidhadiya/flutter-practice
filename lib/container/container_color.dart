import 'package:flutter/material.dart';

// This class demonstrates Container background color.
class ContainerColor extends StatelessWidget {
  const ContainerColor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Color"),
        ),

        body: Center(
          child: Container(

            // Sets the background color.
            color: Colors.blue,

            // Adds space inside the Container.
            padding: EdgeInsets.all(20),

            child: Text(
              "Hello Flutter",

              // Makes the text visible on the blue background.
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}