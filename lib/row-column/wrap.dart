// Wrap is similar to Row and Column.
//
// Row:
// → Keeps all children in one horizontal line.
//
// Wrap:
// → Automatically moves children to the next line
//   when there is not enough space.
//
// Important properties:
//
// children
// direction
// alignment
// spacing
// runSpacing
// runAlignment
// crossAxisAlignment
// verticalDirection
// textDirection
//
// =====================================================

import 'package:flutter/material.dart';

// =====================================================
// MY APP
// =====================================================

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(

        appBar: AppBar(
          title: const Text(
            "Wrap Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC WRAP
              // =================================================

              Wrap(
                children: const [

                  Chip(
                    label: Text("Flutter"),
                  ),

                  Chip(
                    label: Text("Dart"),
                  ),

                  Chip(
                    label: Text("Android"),
                  ),

                  Chip(
                    label: Text("Firebase"),
                  ),

                  Chip(
                    label: Text("GitHub"),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 2. WRAP WITH SPACING
              // =================================================
              //
              // spacing:
              // Horizontal space between children.
              // =================================================

              Wrap(
                spacing: 10,

                children: const [

                  Chip(
                    label: Text("Flutter"),
                  ),

                  Chip(
                    label: Text("Dart"),
                  ),

                  Chip(
                    label: Text("Firebase"),
                  ),

                  Chip(
                    label: Text("Git"),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 3. RUN SPACING
              // =================================================
              //
              // runSpacing:
              // Vertical space between rows.
              // =================================================

              Wrap(
                spacing: 10,

                runSpacing: 15,

                children: const [

                  Chip(
                    label: Text("HTML"),
                  ),

                  Chip(
                    label: Text("CSS"),
                  ),

                  Chip(
                    label: Text("JavaScript"),
                  ),

                  Chip(
                    label: Text("Dart"),
                  ),

                  Chip(
                    label: Text("Flutter"),
                  ),

                  Chip(
                    label: Text("SQL"),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 4. ALIGNMENT
              // =================================================
              //
              // alignment controls children inside each run.
              // =================================================

              Wrap(
                alignment: WrapAlignment.center,

                spacing: 10,

                children: const [

                  Chip(
                    label: Text("One"),
                  ),

                  Chip(
                    label: Text("Two"),
                  ),

                  Chip(
                    label: Text("Three"),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 5. WRAP ALIGNMENT - END
              // =================================================

              Wrap(
                alignment: WrapAlignment.end,

                spacing: 10,

                children: const [

                  Chip(
                    label: Text("A"),
                  ),

                  Chip(
                    label: Text("B"),
                  ),

                  Chip(
                    label: Text("C"),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 6. RUN ALIGNMENT
              // =================================================
              //
              // Controls how multiple runs are positioned.
              // =================================================

              SizedBox(
                height: 150,

                child: Wrap(
                  spacing: 10,

                  runSpacing: 10,

                  runAlignment:
                  WrapAlignment.center,

                  children: const [

                    Chip(
                      label: Text("Flutter"),
                    ),

                    Chip(
                      label: Text("Dart"),
                    ),

                    Chip(
                      label: Text("Firebase"),
                    ),

                    Chip(
                      label: Text("GitHub"),
                    ),

                    Chip(
                      label: Text("API"),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 7. CROSS AXIS ALIGNMENT
              // =================================================

              Wrap(
                crossAxisAlignment:
                WrapCrossAlignment.center,

                spacing: 10,

                children: const [

                  Icon(
                    Icons.star,
                    size: 40,
                  ),

                  Text(
                    "Flutter",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),

                  Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 8. DIRECTION - HORIZONTAL
              // =================================================

              Wrap(
                direction: Axis.horizontal,

                spacing: 10,

                children: const [

                  Chip(
                    label: Text("1"),
                  ),

                  Chip(
                    label: Text("2"),
                  ),

                  Chip(
                    label: Text("3"),
                  ),

                  Chip(
                    label: Text("4"),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 9. DIRECTION - VERTICAL
              // =================================================

              SizedBox(
                height: 250,

                child: Wrap(
                  direction: Axis.vertical,

                  spacing: 10,

                  children: const [

                    Chip(
                      label: Text("One"),
                    ),

                    Chip(
                      label: Text("Two"),
                    ),

                    Chip(
                      label: Text("Three"),
                    ),

                    Chip(
                      label: Text("Four"),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 10. WRAP WITH BUTTONS
              // =================================================

              Wrap(
                spacing: 10,

                runSpacing: 10,

                children: [

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Profile",
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Settings",
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Logout",
                    ),
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 11. WRAP WITH ICONS
              // =================================================

              Wrap(
                spacing: 20,

                runSpacing: 20,

                children: const [

                  Icon(
                    Icons.home,
                    size: 50,
                  ),

                  Icon(
                    Icons.person,
                    size: 50,
                  ),

                  Icon(
                    Icons.settings,
                    size: 50,
                  ),

                  Icon(
                    Icons.favorite,
                    size: 50,
                  ),

                  Icon(
                    Icons.notifications,
                    size: 50,
                  ),
                ],
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 12. REAL-WORLD TAGS
              // =================================================

              Container(
                padding: const EdgeInsets.all(20),

                margin: const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.grey.shade200,

                  borderRadius:
                  BorderRadius.circular(15),
                ),

                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    const Text(
                      "Skills",

                      style: TextStyle(
                        fontSize: 22,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    Wrap(
                      spacing: 10,

                      runSpacing: 10,

                      children: const [

                        Chip(
                          avatar: Icon(
                            Icons.code,
                          ),
                          label: Text(
                            "Flutter",
                          ),
                        ),

                        Chip(
                          avatar: Icon(
                            Icons.code,
                          ),
                          label: Text(
                            "Dart",
                          ),
                        ),

                        Chip(
                          label: Text(
                            "Firebase",
                          ),
                        ),

                        Chip(
                          label: Text(
                            "SQLite",
                          ),
                        ),

                        Chip(
                          label: Text(
                            "GitHub",
                          ),
                        ),

                        Chip(
                          label: Text(
                            "REST API",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 13. WRAP WITH CONTAINERS
              // =================================================

              Wrap(
                spacing: 10,

                runSpacing: 10,

                children: [

                  Container(
                    width: 100,
                    height: 80,

                    color: Colors.blue,

                    child: const Center(
                      child: Text(
                        "One",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 80,

                    color: Colors.green,

                    child: const Center(
                      child: Text(
                        "Two",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 80,

                    color: Colors.orange,

                    child: const Center(
                      child: Text(
                        "Three",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 80,

                    color: Colors.purple,

                    child: const Center(
                      child: Text(
                        "Four",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
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


// =====================================================
// QUICK REVISION
// =====================================================
//
// Wrap
// → Places children next to each other.
//
// When there is not enough space,
// children automatically move to another line.
//
// =====================================================
//
// IMPORTANT PROPERTIES
//
// children
// → Widgets inside Wrap.
//
// spacing
// → Horizontal/main-axis space between children.
//
// runSpacing
// → Space between rows/runs.
//
// alignment
// → Alignment of children inside each run.
//
// runAlignment
// → Alignment of the runs.
//
// crossAxisAlignment
// → Alignment across the cross axis.
//
// direction
// → Horizontal or Vertical.
//
// =====================================================
//
// ROW vs WRAP
//
// Row:
//
// A   B   C   D   E
//
// Everything stays on one line.
//
// Wrap:
//
// A   B   C
// D   E
//
// Children automatically move to another line.
//
// =====================================================
//
// COMMON USES:
//
// • Tags
// • Chips
// • Categories
// • Buttons
// • Filters
// • Skills
// • Responsive items
//
// =====================================================