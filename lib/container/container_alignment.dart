import 'package:flutter/material.dart';

// This class demonstrates Container alignment.
class ContainerAlignment extends StatelessWidget {
  const ContainerAlignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Alignment"),
        ),

        body: Center(
          child: Container(
            width: 300,
            height: 200,

            // Background color of the Container.
            color: Colors.blue,

            // Positions the child in the center of the Container.
            alignment: Alignment.center,

            // Places the child at the top-center.
            // alignment: Alignment.topCenter,

            // Places the child at the top-right corner.
            // alignment: Alignment.topRight,

            // Places the child at the center-left.
            // alignment: Alignment.centerLeft,

            // Places the child at the center-right.
            // alignment: Alignment.centerRight,

            // Places the child at the bottom-left corner.
            // alignment: Alignment.bottomLeft,

            // Places the child at the bottom-center.
            // alignment: Alignment.bottomCenter,

            // Places the child at the bottom-right corner.
            // alignment: Alignment.bottomRight,

            child: Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}