import 'package:flutter/material.dart';

// This class demonstrates the basic Container widget.
class ContainerBasic extends StatelessWidget {
  const ContainerBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // AppBar displays the title at the top.
        appBar: AppBar(
          title: Text("Container Basic"),
        ),

        body: Center(

          // Container is a box that can contain a child widget.
          child: Container(

            // Text is placed inside the Container.
            child: Text("Hello Flutter"),
          ),
        ),
      ),
    );
  }
}