// Stack places widgets on top of each other.
//
// Important widgets/properties:
//
// Stack
// Positioned
// Positioned.fill
// alignment
// fit
// clipBehavior
//
// =====================================================

import 'package:flutter/material.dart';


// =====================================================
// MAIN
// =====================================================

void main() {
  runApp(
    const MyApp(),
  );
}


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
            "Stack Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC STACK
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  children: [

                    Container(
                      color: Colors.blue,
                    ),

                    const Center(
                      child: Text(
                        "Background",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    const Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 2. STACK WITH POSITIONED
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  children: [

                    Container(
                      color: Colors.blue,
                    ),

                    const Positioned(
                      top: 20,
                      left: 20,

                      child: Text(
                        "Top Left",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const Positioned(
                      top: 20,
                      right: 20,

                      child: Text(
                        "Top Right",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const Positioned(
                      bottom: 20,
                      left: 20,

                      child: Text(
                        "Bottom Left",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const Positioned(
                      bottom: 20,
                      right: 20,

                      child: Text(
                        "Bottom Right",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 3. POSITIONED WITH WIDTH AND HEIGHT
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  children: [

                    Container(
                      color: Colors.grey,
                    ),

                    Positioned(
                      top: 30,
                      left: 50,

                      width: 200,
                      height: 100,

                      child: Container(
                        color: Colors.orange,

                        child: const Center(
                          child: Text(
                            "Positioned",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 4. STACK ALIGNMENT
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  alignment: Alignment.center,

                  children: [

                    Container(
                      color: Colors.green,
                    ),

                    const Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 5. DIFFERENT ALIGNMENT
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  alignment: Alignment.bottomRight,

                  children: [

                    Container(
                      color: Colors.purple,
                    ),

                    const Icon(
                      Icons.settings,
                      size: 70,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 6. POSITIONED.fill
              // =================================================
              //
              // Positioned.fill makes the child fill the
              // available Stack area.
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  children: [

                    Container(
                      color: Colors.black,
                    ),

                    Positioned.fill(
                      child: Container(
                        alignment: Alignment.center,

                        color: Colors.black54,

                        child: const Text(
                          "Full Area",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 7. PROFILE IMAGE + ONLINE INDICATOR
              // =================================================

              SizedBox(
                width: 150,
                height: 150,

                child: Stack(
                  children: [

                    const CircleAvatar(
                      radius: 70,

                      child: Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ),

                    Positioned(
                      right: 5,
                      bottom: 5,

                      child: Container(
                        width: 30,
                        height: 30,

                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 8. IMAGE CARD WITH TEXT
              // =================================================

              SizedBox(
                width: 350,
                height: 220,

                child: Stack(
                  children: [

                    Container(
                      width: double.infinity,
                      height: double.infinity,

                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                        BorderRadius.circular(15),
                      ),
                    ),

                    Positioned(
                      left: 20,
                      bottom: 20,

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: const [

                          Text(
                            "Flutter Development",

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          Text(
                            "Learn Flutter UI",

                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 9. NOTIFICATION BADGE
              // =================================================

              Stack(
                clipBehavior: Clip.none,

                children: [

                  const Icon(
                    Icons.notifications,
                    size: 50,
                  ),

                  Positioned(
                    top: -5,
                    right: -5,

                    child: Container(
                      width: 25,
                      height: 25,

                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),

                      child: const Center(
                        child: Text(
                          "5",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(
                height: 40,
              ),


              // =================================================
              // 10. STACK WITH BUTTON
              // =================================================

              SizedBox(
                width: 300,
                height: 180,

                child: Stack(
                  children: [

                    Container(
                      width: double.infinity,
                      height: double.infinity,

                      color: Colors.blue.shade100,
                    ),

                    const Positioned(
                      top: 20,
                      left: 20,

                      child: Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 20,
                      right: 20,

                      child: ElevatedButton(
                        onPressed: () {},

                        child: const Text(
                          "Get Started",
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 11. MULTIPLE LAYERS
              // =================================================

              SizedBox(
                width: 300,
                height: 200,

                child: Stack(
                  children: [

                    Container(
                      color: Colors.blue,
                    ),

                    Positioned(
                      top: 20,
                      left: 20,

                      child: Container(
                        width: 150,
                        height: 100,

                        color: Colors.orange,
                      ),
                    ),

                    Positioned(
                      top: 50,
                      left: 70,

                      child: Container(
                        width: 150,
                        height: 100,

                        color: Colors.green,
                      ),
                    ),

                    const Positioned(
                      bottom: 10,
                      right: 10,

                      child: Text(
                        "Top Layer",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight:
                          FontWeight.bold,
                        ),
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
// Stack
// → Places widgets on top of each other.
//
// =====================================================
//
// POSITIONED
//
// Positioned(
//   top: 10,
//   left: 20,
//   child: Widget(),
// )
//
// =====================================================
//
// POSITIONED PROPERTIES
//
// top
// bottom
// left
// right
// width
// height
//
// =====================================================
//
// POSITIONED.FILL
//
// Positioned.fill(
//   child: Widget(),
// )
//
// → Fills the available Stack area.
//
// =====================================================
//
// STACK ALIGNMENT
//
// Stack(
//   alignment: Alignment.center,
//   children: [
//     ...
//   ],
// )
//
// =====================================================
//
// COMMON USES
//
// • Profile badges
// • Notification badges
// • Image overlays
// • Text over images
// • Floating buttons
// • Cards
// • Layers
//
// =====================================================
//
// LAYER ORDER
//
// The last child is painted on top.
//
// Stack(
//   children: [
//     Background,
//     Middle,
//     Top,
//   ],
// )
//
// =====================================================