// Row    → Horizontal layout
// Column → Vertical layout
//
// Row and Column are commonly combined to create
// real-world Flutter UI.
//
// =====================================================

import 'package:flutter/material.dart';

class RowColumnApp extends StatelessWidget {
  const RowColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row + Column"),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              // =================================================
              // 1. Row containing Column
              // =================================================

              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius:
                  BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    // Profile Icon

                    const Icon(
                      Icons.account_circle,
                      size: 80,
                    ),

                    const SizedBox(
                      width: 20,
                    ),


                    // User Information

                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: const [

                        Text(
                          "A Patel",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "Flutter Developer",
                        ),

                        SizedBox(height: 5),

                        Text(
                          "apatel@example.com",
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              // =================================================
              // 2. Column containing Rows
              // =================================================

              Column(
                children: [

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.home),
                      Text("Home"),
                      Icon(Icons.arrow_forward),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.person),
                      Text("Profile"),
                      Icon(Icons.arrow_forward),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.settings),
                      Text("Settings"),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 3. Dashboard Cards
              // =================================================

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,

                children: [

                  Column(
                    children: const [
                      Icon(
                        Icons.people,
                        size: 40,
                      ),

                      Text("Students"),

                      Text(
                        "250",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),


                  Column(
                    children: const [
                      Icon(
                        Icons.book,
                        size: 40,
                      ),

                      Text("Courses"),

                      Text(
                        "12",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),


                  Column(
                    children: const [
                      Icon(
                        Icons.check_circle,
                        size: 40,
                      ),

                      Text("Attendance"),

                      Text(
                        "95%",
                        style: TextStyle(
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 4. Profile UI
              // =================================================

              Container(
                padding: const EdgeInsets.all(20),

                child: Row(
                  children: [

                    const CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),

                    const SizedBox(
                      width: 15,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          const Text(
                            "A Patel",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          const Text(
                            "Flutter Developer",
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          Row(
                            children: [

                              const Icon(
                                Icons.email,
                                size: 18,
                              ),

                              const SizedBox(
                                width: 5,
                              ),

                              const Text(
                                "apatel@example.com",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
// row.dart
// → Learn Row separately.
//
// column.dart
// → Learn Column separately.
//
// row_column.dart
// → Learn how to combine them.
//
// =====================================================
//
// ROW:
//
// mainAxis  → Horizontal
// crossAxis → Vertical
//
// =====================================================
//
// COLUMN:
//
// mainAxis  → Vertical
// crossAxis → Horizontal
//
// =====================================================
//
// COMMON REAL-WORLD PATTERN:
//
// Row
// ├── Icon
// └── Column
//     ├── Name
//     ├── Role
//     └── Email
//
// =====================================================