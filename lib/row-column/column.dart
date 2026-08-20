// Column arranges widgets vertically.
//
// Main Axis  → Vertical
// Cross Axis → Horizontal
//
// =====================================================

import 'package:flutter/material.dart';

class ColumnApp extends StatelessWidget {
  const ColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column Examples"),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              // =================================================
              // 1. Basic Column
              // =================================================

              const Column(
                children: [
                  Text("First"),
                  Text("Second"),
                  Text("Third"),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 2. MainAxisAlignment.start
              // =================================================

              SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: const [
                    Text("Start"),
                    Icon(Icons.home),
                  ],
                ),
              ),


              // =================================================
              // 3. MainAxisAlignment.center
              // =================================================

              SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: const [
                    Text("Center"),
                    Icon(Icons.home),
                  ],
                ),
              ),


              // =================================================
              // 4. MainAxisAlignment.end
              // =================================================

              SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.end,
                  children: const [
                    Text("End"),
                    Icon(Icons.home),
                  ],
                ),
              ),


              // =================================================
              // 5. Space Between
              // =================================================

              SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Top"),
                    Text("Middle"),
                    Text("Bottom"),
                  ],
                ),
              ),


              // =================================================
              // 6. Space Around
              // =================================================

              SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: const [
                    Text("One"),
                    Text("Two"),
                    Text("Three"),
                  ],
                ),
              ),


              // =================================================
              // 7. Space Evenly
              // =================================================

              SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("A"),
                    Text("B"),
                    Text("C"),
                  ],
                ),
              ),


              // =================================================
              // 8. CrossAxisAlignment.start
              // =================================================

              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: const [
                    Text("Left"),
                    Text("Aligned"),
                  ],
                ),
              ),


              // =================================================
              // 9. CrossAxisAlignment.center
              // =================================================

              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: const [
                    Text("Center"),
                    Text("Aligned"),
                  ],
                ),
              ),


              // =================================================
              // 10. CrossAxisAlignment.end
              // =================================================

              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.end,
                  children: const [
                    Text("Right"),
                    Text("Aligned"),
                  ],
                ),
              ),


              // =================================================
              // 11. Column with Buttons
              // =================================================

              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Login"),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Register"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}