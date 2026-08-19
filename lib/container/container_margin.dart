import 'package:flutter/material.dart';

// This class demonstrates Container margin.
class ContainerMargin extends StatelessWidget {
  const ContainerMargin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Margin"),
        ),

        body: Container(

          // Creates 30 pixels of space outside the Container.
          margin: EdgeInsets.all(30),

          // Adds space inside the Container.
          padding: EdgeInsets.all(20),

          // Sets the background color.
          color: Colors.blue,

          child: Text(
            "Hello Flutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}