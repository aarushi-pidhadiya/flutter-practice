// Row arranges widgets horizontally.
//
// Main Axis  → Horizontal
// Cross Axis → Vertical
//
// =====================================================

import 'package:flutter/material.dart';

class RowApp extends StatelessWidget {
  const RowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Examples"),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              // =================================================
              // 1. Basic Row
              // =================================================

              Row(
                children: const [
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  Text("A Patel"),
                ],
              ),

              const SizedBox(height: 30),


              // =================================================
              // 2. MainAxisAlignment.start
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: const [
                  Text("Start"),
                  Icon(Icons.home),
                ],
              ),


              // =================================================
              // 3. MainAxisAlignment.center
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: const [
                  Text("Center"),
                  Icon(Icons.home),
                ],
              ),


              // =================================================
              // 4. MainAxisAlignment.end
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.end,
                children: const [
                  Text("End"),
                  Icon(Icons.home),
                ],
              ),


              // =================================================
              // 5. Space Between
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Left"),
                  Text("Center"),
                  Text("Right"),
                ],
              ),


              // =================================================
              // 6. Space Around
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceAround,
                children: const [
                  Text("One"),
                  Text("Two"),
                  Text("Three"),
                ],
              ),


              // =================================================
              // 7. Space Evenly
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("A"),
                  Text("B"),
                  Text("C"),
                ],
              ),


              // =================================================
              // 8. CrossAxisAlignment
              // =================================================

              SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: const [
                    Text("Center"),
                    Icon(Icons.star),
                  ],
                ),
              ),


              // =================================================
              // 9. MainAxisSize.min
              // =================================================

              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.favorite),
                  Text("Favorite"),
                ],
              ),


              // =================================================
              // 10. MainAxisSize.max
              // =================================================

              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: const [
                    Text("Maximum Width"),
                  ],
                ),
              ),


              // =================================================
              // 11. Row with Buttons
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
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