// =====================================================
// PADDING IN FLUTTER
// =====================================================
//
// Padding is used to add space around/inside a widget.
//
// Padding mainly uses EdgeInsets.
//
// Important:
// 1. EdgeInsets.all()
// 2. EdgeInsets.symmetric()
// 3. EdgeInsets.only()
// 4. EdgeInsets.fromLTRB()
// 5. EdgeInsets.zero
//
// =====================================================

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,


      // =================================================
      // HOME
      // =================================================

      home: Scaffold(

        appBar: AppBar(

          title: const Text(
            "Padding Examples",
          ),
        ),


        // ===============================================
        // BODY
        // ===============================================

        body: SingleChildScrollView(

          child: Column(

            children: [

              // =========================================
              // 1. EdgeInsets.all()
              // =========================================
              //
              // Adds the same amount of padding on
              // all four sides.
              //
              // top    → 20
              // bottom → 20
              // left   → 20
              // right  → 20
              // =========================================

              Padding(

                padding: const EdgeInsets.all(20),

                child: Container(

                  width: double.infinity,

                  height: 100,

                  color: Colors.blue,

                  child: const Center(

                    child: Text(

                      "EdgeInsets.all(20)",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),


              // =========================================
              // 2. EdgeInsets.symmetric()
              // =========================================
              //
              // horizontal → left + right
              // vertical   → top + bottom
              // =========================================

              Padding(

                padding: const EdgeInsets.symmetric(

                  horizontal: 30,

                  vertical: 15,
                ),

                child: Container(

                  width: double.infinity,

                  height: 100,

                  color: Colors.green,

                  child: const Center(

                    child: Text(

                      "EdgeInsets.symmetric()",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),


              // =========================================
              // 3. EdgeInsets.only()
              // =========================================
              //
              // Allows different padding on each side.
              // =========================================

              Padding(

                padding: const EdgeInsets.only(

                  left: 40,

                  right: 20,

                  top: 10,

                  bottom: 30,
                ),

                child: Container(

                  width: double.infinity,

                  height: 100,

                  color: Colors.orange,

                  child: const Center(

                    child: Text(

                      "EdgeInsets.only()",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),


              // =========================================
              // 4. EdgeInsets.fromLTRB()
              // =========================================
              //
              // LTRB means:
              //
              // L → Left
              // T → Top
              // R → Right
              // B → Bottom
              //
              // Order:
              //
              // left, top, right, bottom
              // =========================================

              Padding(

                padding: const EdgeInsets.fromLTRB(

                  50,

                  10,

                  30,

                  20,
                ),

                child: Container(

                  width: double.infinity,

                  height: 100,

                  color: Colors.purple,

                  child: const Center(

                    child: Text(

                      "EdgeInsets.fromLTRB()",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),


              // =========================================
              // 5. EdgeInsets.zero
              // =========================================
              //
              // Removes all padding.
              // =========================================

              Padding(

                padding: EdgeInsets.zero,

                child: Container(

                  width: double.infinity,

                  height: 100,

                  color: Colors.red,

                  child: const Center(

                    child: Text(

                      "EdgeInsets.zero",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),


              // =========================================
              // 6. Padding with Column
              // =========================================
              //
              // Padding can contain any widget.
              // =========================================

              Padding(

                padding: const EdgeInsets.all(20),

                child: Column(

                  children: [

                    const Text(

                      "User Information",

                      style: TextStyle(

                        fontSize: 24,

                        fontWeight: FontWeight.bold,
                      ),
                    ),


                    // SizedBox gives space between
                    // widgets.

                    const SizedBox(
                      height: 15,
                    ),


                    const Text(
                      "Name: A Patel",
                    ),


                    const SizedBox(
                      height: 10,
                    ),


                    const Text(
                      "Role: Flutter Developer",
                    ),
                  ],
                ),
              ),


              // =========================================
              // 7. Nested Padding
              // =========================================
              //
              // Padding can be placed inside another
              // Padding widget.
              // =========================================

              Padding(

                padding: const EdgeInsets.all(20),

                child: Padding(

                  padding: const EdgeInsets.all(10),

                  child: Container(

                    width: double.infinity,

                    height: 100,

                    color: Colors.teal,

                    child: const Center(

                      child: Text(

                        "Nested Padding",

                        style: TextStyle(

                          color: Colors.white,

                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}