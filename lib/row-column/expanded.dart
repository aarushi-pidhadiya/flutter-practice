// Expanded is used inside:
//   Row
//   Column
//
// It makes a child take the available remaining space.
//
// Main properties:
//   child
//   flex
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
            "Expanded Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC EXPANDED
              // =================================================
              //
              // Two Expanded widgets share the available
              // horizontal space equally.
              // =================================================

              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 2. THREE EXPANDED WIDGETS
              // =================================================
              //
              // All three receive equal space.
              // =================================================

              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      child: const Center(
                        child: Text("1"),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.orange,
                      child: const Center(
                        child: Text("2"),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.purple,
                      child: const Center(
                        child: Text("3"),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 3. EXPANDED WITH FLEX
              // =================================================
              //
              // flex controls the proportion of available space.
              //
              // flex 1 : flex 2
              //
              // Total = 3 parts
              //
              // First  = 1 part
              // Second = 2 parts
              // =================================================

              Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 4. FLEX 1 : 1 : 2
              // =================================================

              Row(
                children: [

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.red,
                      child: const Center(
                        child: Text("1"),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.orange,
                      child: const Center(
                        child: Text("1"),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.purple,
                      child: const Center(
                        child: Text("2"),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 5. EXPANDED WITH TEXT
              // =================================================
              //
              // Expanded allows Text to use the remaining
              // horizontal space.
              // =================================================

              Row(
                children: [

                  const Icon(
                    Icons.person,
                    size: 50,
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  Expanded(
                    child: const Text(
                      "This is a long text. Expanded allows "
                          "the Text widget to use the remaining "
                          "available space.",
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 6. EXPANDED INSIDE COLUMN
              // =================================================
              //
              // Inside Column, Expanded divides vertical space.
              // =================================================

              SizedBox(
                height: 250,

                child: Column(
                  children: [

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.blue,

                        child: const Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.green,

                        child: const Center(
                          child: Text(
                            "Bottom",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 30),


              // =================================================
              // 7. EXPANDED WITH ROW + COLUMN
              // =================================================
              //
              // Real-world profile layout.
              // =================================================

              Container(
                padding: const EdgeInsets.all(20),

                margin: const EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius:
                  BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    const CircleAvatar(
                      radius: 35,

                      child: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),

                    const SizedBox(
                      width: 15,
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: const [

                          Text(
                            "A Patel",

                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          Text(
                            "Flutter Developer",
                          ),

                          Text(
                            "Learning Flutter UI",
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 20),


              // =================================================
              // 8. EXPANDED BUTTONS
              // =================================================
              //
              // Two buttons share available width.
              // =================================================

              Row(
                children: [

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},

                      child: const Text(
                        "Login",
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},

                      child: const Text(
                        "Register",
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 9. EXPANDED LOGIN FORM
              // =================================================
              //
              // Practical example.
              // =================================================

              Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [

                    const Text(
                      "Login",

                      style: TextStyle(
                        fontSize: 28,
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border:
                        OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    const TextField(
                      obscureText: true,

                      decoration: InputDecoration(
                        labelText: "Password",
                        border:
                        OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [

                        Expanded(
                          flex: 1,

                          child: ElevatedButton(
                            onPressed: () {},

                            child: const Text(
                              "Login",
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 10,
                        ),

                        Expanded(
                          flex: 1,

                          child: OutlinedButton(
                            onPressed: () {},

                            child: const Text(
                              "Register",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              // =================================================
              // 10. FLEX RATIO EXAMPLE
              // =================================================
              //
              // 1 : 2 : 3
              //
              // Total = 6 parts.
              // =================================================

              Row(
                children: [

                  Expanded(
                    flex: 1,

                    child: Container(
                      height: 80,
                      color: Colors.blue,

                      child: const Center(
                        child: Text("1"),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,

                    child: Container(
                      height: 80,
                      color: Colors.green,

                      child: const Center(
                        child: Text("2"),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 3,

                    child: Container(
                      height: 80,
                      color: Colors.orange,

                      child: const Center(
                        child: Text("3"),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 11. EXPANDED WITH ICON + TEXT + BUTTON
              // =================================================

              Row(
                children: [

                  const Icon(
                    Icons.notifications,
                    size: 35,
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  const Expanded(
                    child: Text(
                      "You have new notifications",
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {},

                    child: const Text(
                      "View",
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
// Expanded
// → Takes available remaining space.
//
// =====================================================
//
// BASIC:
//
// Row(
//   children: [
//     Expanded(
//       child: Container(),
//     ),
//   ],
// )
//
// =====================================================
//
// FLEX:
//
// Expanded(
//   flex: 1,
//   child: ...
// )
//
// Expanded(
//   flex: 2,
//   child: ...
// )
//
// Ratio:
//
// 1 : 2
//
// =====================================================
//
// ROW:
//
// Expanded
// → Divides available horizontal space.
//
// =====================================================
//
// COLUMN:
//
// Expanded
// → Divides available vertical space.
//
// =====================================================
//
// IMPORTANT:
//
// Expanded must normally be used inside:
//
// Row
// Column
//
// =====================================================
//
// REAL UI:
//
// Row
// ├── Icon
// ├── Expanded
// │   └── Column
// │       ├── Name
// │       └── Role
// └── Button
//
// =====================================================