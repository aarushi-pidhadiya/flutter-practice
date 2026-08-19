import 'package:flutter/material.dart';

// This class combines different Container properties.
class ContainerPractice extends StatelessWidget {
  const ContainerPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // AppBar title.
        appBar: AppBar(
          title: Text("Container Practice"),
        ),

        body: Center(
          child: Container(

            // Container width.
            width: 300,

            // Container height.
            height: 200,

            // Space outside the Container.
            margin: EdgeInsets.all(20),

            // Space inside the Container.
            padding: EdgeInsets.all(20),

            // Decoration of the Container.
            decoration: BoxDecoration(

              // Background color.
              color: Colors.blue,

              // Rounded corners.
              borderRadius: BorderRadius.circular(20),

              // Border.
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),

              // Shadow.
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),

            child: Text(
              "Flutter Container",

              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}