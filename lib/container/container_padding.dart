import 'package:flutter/material.dart';

// This class demonstrates Container padding.
class ContainerPadding extends StatelessWidget {
  const ContainerPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Padding"),
        ),

        body: Center(
          child: Container(

            // Background color of the Container.
            color: Colors.blue,

            // Creates 20 pixels of space inside the Container.
            padding: EdgeInsets.all(20),

            child: Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}