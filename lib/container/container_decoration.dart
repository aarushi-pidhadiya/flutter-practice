import 'package:flutter/material.dart';

// This class demonstrates Container BoxDecoration.
class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Decoration"),
        ),

        body: Center(
          child: Container(
            width: 250,
            height: 150,

            // Adds space between Container and its child.
            padding: EdgeInsets.all(20),

            // BoxDecoration is used to decorate the Container.
            decoration: BoxDecoration(

              // Background color.
              color: Colors.blue,

              // Creates rounded corners.
              borderRadius: BorderRadius.circular(20),

              // Adds a border around the Container.
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),

              // Adds a shadow below the Container.
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                ),
              ],
            ),

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