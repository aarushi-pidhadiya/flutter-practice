import 'package:flutter/material.dart';

// This class demonstrates Container width and height.
class ContainerSize extends StatelessWidget {
  const ContainerSize({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Size"),
        ),

        body: Center(
          child: Container(

            // Sets the width of the Container.
            width: 200,

            // Sets the height of the Container.
            height: 150,

            // Gives the Container a background color.
            color: Colors.blue,

            child: Text("Hello Flutter"),
          ),
        ),
      ),
    );
  }
}