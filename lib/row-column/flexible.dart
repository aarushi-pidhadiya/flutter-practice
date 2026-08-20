// Flexible is used inside:
//   Row
//   Column
//
// Flexible allows a child to occupy available space
// without forcing it to fill all of that space.
//
// Main properties:
//   child
//   flex
//   fit
//
// fit:
//   FlexFit.loose   → child can take less space
//   FlexFit.tight   → child must take available space
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
            "Flexible Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC FLEXIBLE
              // =================================================

              Row(
                children: [

                  Flexible(
                    child: Container(
                      height: 100,
                      color: Colors.blue,

                      child: const Center(
                        child: Text(
                          "Flexible",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,

                    child: const Center(
                      child: Text(
                        "Fixed",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 2. FLEXIBLE WITH FLEX
              // =================================================

              Row(
                children: [

                  Flexible(
                    flex: 1,

                    child: Container(
                      height: 100,
                      color: Colors.red,

                      child: const Center(
                        child: Text(
                          "Flex 1",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 2,

                    child: Container(
                      height: 100,
                      color: Colors.orange,

                      child: const Center(
                        child: Text(
                          "Flex 2",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 3. FLEXIBLE WITH LONG TEXT
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

                  Flexible(
                    child: Text(
                      "This is a long text. Flexible allows "
                          "this text to fit within the available "
                          "space without causing overflow.",
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 4. FLEXIBLE FIT: LOOSE
              // =================================================
              //
              // Loose is the default.
              //
              // The child can be smaller than the available
              // space.
              // =================================================

              Row(
                children: [

                  Flexible(
                    fit: FlexFit.loose,

                    child: Container(
                      width: 150,
                      height: 80,
                      color: Colors.purple,

                      child: const Center(
                        child: Text(
                          "Loose",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 5. FLEXIBLE FIT: TIGHT
              // =================================================
              //
              // Tight behaves more like Expanded.
              // =================================================

              Row(
                children: [

                  Flexible(
                    fit: FlexFit.tight,

                    child: Container(
                      height: 80,
                      color: Colors.teal,

                      child: const Center(
                        child: Text(
                          "Tight",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  Flexible(
                    fit: FlexFit.tight,

                    child: Container(
                      height: 80,
                      color: Colors.indigo,

                      child: const Center(
                        child: Text(
                          "Tight",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 6. FLEXIBLE INSIDE COLUMN
              // =================================================

              SizedBox(
                height: 250,

                child: Column(
                  children: [

                    Flexible(
                      child: Container(
                        width: double.infinity,
                        color: Colors.blue,

                        child: const Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Flexible(
                      child: Container(
                        width: double.infinity,
                        color: Colors.green,

                        child: const Center(
                          child: Text(
                            "Bottom",
                            style: TextStyle(
                              color: Colors.white,
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
              // 7. FLEXIBLE + FIXED WIDGET
              // =================================================

              Row(
                children: [

                  Flexible(
                    child: Container(
                      height: 80,
                      color: Colors.blue,

                      child: const Center(
                        child: Text(
                          "Flexible Area",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.orange,

                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 30),


              // =================================================
              // 8. FLEXIBLE + ROW + COLUMN
              // =================================================
              //
              // Practical profile layout.
              // =================================================

              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius:
                  BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    const CircleAvatar(
                      radius: 35,

                      child: Icon(
                        Icons.person,
                      ),
                    ),

                    const SizedBox(
                      width: 15,
                    ),

                    Flexible(
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
                            "Learning Flutter",
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


              const SizedBox(height: 30),


              // =================================================
              // 9. FLEXIBLE BUTTONS
              // =================================================

              Row(
                children: [

                  Flexible(
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

                  Flexible(
                    child: OutlinedButton(
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
              // 10. FLEXIBLE WITH DIFFERENT FLEX VALUES
              // =================================================

              Row(
                children: [

                  Flexible(
                    flex: 1,

                    child: Container(
                      height: 80,
                      color: Colors.red,

                      child: const Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 2,

                    child: Container(
                      height: 80,
                      color: Colors.green,

                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Flexible(
                    flex: 3,

                    child: Container(
                      height: 80,
                      color: Colors.blue,

                      child: const Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
// Flexible
// → Allows a child to use available space.
//
// =====================================================
//
// FLEXIBLE:
//
// Flexible(
//   child: Container(),
// )
//
// =====================================================
//
// FLEX:
//
// Flexible(
//   flex: 1,
//   child: ...
// )
//
// Flexible(
//   flex: 2,
//   child: ...
// )
//
// =====================================================
//
// FIT:
//
// FlexFit.loose
// → Child can be smaller.
//
// FlexFit.tight
// → Child must fill its allocated space.
//
// =====================================================
//
// EXPANDED vs FLEXIBLE
//
// Expanded:
// → Forces child to fill available space.
//
// Flexible:
// → Allows child to use available space.
//
// =====================================================
//
// IMPORTANT:
//
// Both are normally used inside:
//
// Row
// Column
//
// =====================================================