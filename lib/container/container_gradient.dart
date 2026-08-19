import 'package:flutter/material.dart';

// This class demonstrates LinearGradient in a Container.
class ContainerGradient extends StatelessWidget {
  const ContainerGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Gradient"),
        ),

        body: Center(
          child: Container(
            width: 300,
            height: 200,

            // BoxDecoration is used to decorate the Container.
            decoration: BoxDecoration(

              // LinearGradient creates a smooth color transition.
              gradient: LinearGradient(

                // The gradient starts from the top-left corner.
                begin: Alignment.topLeft,

                // The gradient ends at the bottom-right corner.
                end: Alignment.bottomRight,

                // Colors used in the gradient.
                // The gradient changes from blue to purple.
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
            ),

            // Places the child in the center of the Container.
            alignment: Alignment.center,

            child: Text(
              "Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}