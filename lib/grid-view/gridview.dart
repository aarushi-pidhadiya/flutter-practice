// GridView displays widgets in rows and columns.
//
// Important types:
//
// 1. GridView()
// 2. GridView.count()
// 3. GridView.extent()
// 4. GridView.builder()
// 5. GridView.custom()
//
// Important properties:
//
// crossAxisCount
// crossAxisSpacing
// mainAxisSpacing
// childAspectRatio
// scrollDirection
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
            "GridView Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC GRIDVIEW
              // =================================================

              SizedBox(
                height: 300,

                child: GridView(
                  padding: const EdgeInsets.all(10),

                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),

                  children: [

                    Container(
                      color: Colors.blue,

                      child: const Center(
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.green,

                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.orange,

                      child: const Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      color: Colors.purple,

                      child: const Center(
                        child: Text(
                          "4",
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
              // 2. GRIDVIEW.COUNT
              // =================================================
              //
              // crossAxisCount controls the number of columns.
              // =================================================

              SizedBox(
                height: 300,

                child: GridView.count(

                  crossAxisCount: 2,

                  padding: const EdgeInsets.all(10),

                  children: [

                    _box("Home", Icons.home),

                    _box(
                      "Profile",
                      Icons.person,
                    ),

                    _box(
                      "Settings",
                      Icons.settings,
                    ),

                    _box(
                      "Favorite",
                      Icons.favorite,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 3. GRIDVIEW.COUNT WITH SPACING
              // =================================================

              SizedBox(
                height: 300,

                child: GridView.count(

                  crossAxisCount: 2,

                  crossAxisSpacing: 10,

                  mainAxisSpacing: 10,

                  padding: const EdgeInsets.all(10),

                  children: [

                    _box("One", Icons.looks_one),

                    _box("Two", Icons.looks_two),

                    _box(
                      "Three",
                      Icons.looks_3,
                    ),

                    _box(
                      "Four",
                      Icons.looks_4,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 4. CHILD ASPECT RATIO
              // =================================================
              //
              // childAspectRatio:
              //
              // width / height
              //
              // Example:
              // 2 → wider item
              // 1 → square item
              // 0.5 → taller item
              // =================================================

              SizedBox(
                height: 250,

                child: GridView.count(

                  crossAxisCount: 2,

                  crossAxisSpacing: 10,

                  mainAxisSpacing: 10,

                  childAspectRatio: 2,

                  padding: const EdgeInsets.all(10),

                  children: [

                    _box(
                      "Wide 1",
                      Icons.crop_16_9,
                    ),

                    _box(
                      "Wide 2",
                      Icons.crop_16_9,
                    ),

                    _box(
                      "Wide 3",
                      Icons.crop_16_9,
                    ),

                    _box(
                      "Wide 4",
                      Icons.crop_16_9,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 5. GRIDVIEW.EXTENT
              // =================================================
              //
              // maxCrossAxisExtent controls the maximum width
              // of each item.
              // =================================================

              SizedBox(
                height: 300,

                child: GridView.extent(

                  maxCrossAxisExtent: 150,

                  crossAxisSpacing: 10,

                  mainAxisSpacing: 10,

                  padding: const EdgeInsets.all(10),

                  children: [

                    _box(
                      "Flutter",
                      Icons.flutter_dash,
                    ),

                    _box(
                      "Dart",
                      Icons.code,
                    ),

                    _box(
                      "Firebase",
                      Icons.cloud,
                    ),

                    _box(
                      "GitHub",
                      Icons.storage,
                    ),

                    _box(
                      "API",
                      Icons.api,
                    ),

                    _box(
                      "SQL",
                      Icons.storage,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 6. GRIDVIEW.BUILDER
              // =================================================
              //
              // Useful for dynamic or large lists.
              //
              // itemCount
              // → Number of items.
              //
              // itemBuilder
              // → Builds each item.
              // =================================================

              SizedBox(
                height: 400,

                child: GridView.builder(

                  padding: const EdgeInsets.all(10),

                  itemCount: 20,

                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    crossAxisSpacing: 10,

                    mainAxisSpacing: 10,

                    childAspectRatio: 1,
                  ),

                  itemBuilder: (
                      context,
                      index,
                      ) {

                    return Card(

                      child: Center(
                        child: Text(
                          "Item ${index + 1}",

                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 7. GRIDVIEW.BUILDER WITH ICONS
              // =================================================

              SizedBox(
                height: 400,

                child: GridView.builder(

                  padding: const EdgeInsets.all(10),

                  itemCount: 8,

                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    crossAxisSpacing: 10,

                    mainAxisSpacing: 10,
                  ),

                  itemBuilder: (
                      context,
                      index,
                      ) {

                    return Card(

                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,

                        children: [

                          const Icon(
                            Icons.apps,
                            size: 45,
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          Text(
                            "App ${index + 1}",
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 8. HORIZONTAL GRIDVIEW
              // =================================================
              //
              // scrollDirection controls the direction.
              // =================================================

              SizedBox(
                height: 200,

                child: GridView.count(

                  scrollDirection:
                  Axis.horizontal,

                  crossAxisCount: 2,

                  mainAxisSpacing: 10,

                  crossAxisSpacing: 10,

                  padding: const EdgeInsets.all(10),

                  children: [

                    _box("1", Icons.home),

                    _box("2", Icons.person),

                    _box("3", Icons.settings),

                    _box("4", Icons.favorite),

                    _box("5", Icons.star),

                    _box("6", Icons.notifications),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 9. GRID WITH BUTTONS
              // =================================================

              SizedBox(
                height: 300,

                child: GridView.count(

                  crossAxisCount: 2,

                  crossAxisSpacing: 10,

                  mainAxisSpacing: 10,

                  padding: const EdgeInsets.all(10),

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
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 10. DASHBOARD GRID
              // =================================================

              SizedBox(
                height: 350,

                child: GridView.count(

                  crossAxisCount: 2,

                  crossAxisSpacing: 15,

                  mainAxisSpacing: 15,

                  padding: const EdgeInsets.all(15),

                  childAspectRatio: 1.4,

                  children: [

                    _dashboardCard(
                      "Students",
                      "250",
                      Icons.people,
                    ),

                    _dashboardCard(
                      "Courses",
                      "12",
                      Icons.book,
                    ),

                    _dashboardCard(
                      "Attendance",
                      "95%",
                      Icons.check_circle,
                    ),

                    _dashboardCard(
                      "Pending",
                      "8",
                      Icons.pending,
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 11. PRODUCT GRID
              // =================================================

              SizedBox(
                height: 400,

                child: GridView.builder(

                  padding: const EdgeInsets.all(10),

                  itemCount: 8,

                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    crossAxisSpacing: 10,

                    mainAxisSpacing: 10,

                    childAspectRatio: 0.8,
                  ),

                  itemBuilder: (
                      context,
                      index,
                      ) {

                    return Card(

                      child: Column(
                        children: [

                          Expanded(
                            child: Container(
                              width: double.infinity,

                              color: Colors.grey.shade300,

                              child: const Icon(
                                Icons.shopping_bag,
                                size: 50,
                              ),
                            ),
                          ),

                          Padding(
                            padding:
                            const EdgeInsets.all(8),

                            child: Column(
                              children: [

                                Text(
                                  "Product ${index + 1}",

                                  style:
                                  const TextStyle(
                                    fontWeight:
                                    FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(
                                  height: 5,
                                ),

                                const Text(
                                  "₹999",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  // =====================================================
  // HELPER METHOD
  // =====================================================

  static Widget _box(
      String title,
      IconData icon,
      ) {

    return Container(

      decoration: BoxDecoration(
        color: Colors.blue.shade100,

        borderRadius:
        BorderRadius.circular(10),
      ),

      child: Column(

        mainAxisAlignment:
        MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            size: 40,
          ),

          const SizedBox(
            height: 10,
          ),

          Text(
            title,

            style: const TextStyle(
              fontSize: 16,
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }


  // =====================================================
  // DASHBOARD CARD
  // =====================================================

  static Widget _dashboardCard(
      String title,
      String value,
      IconData icon,
      ) {

    return Card(

      elevation: 4,

      child: Column(

        mainAxisAlignment:
        MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            size: 40,
          ),

          const SizedBox(
            height: 10,
          ),

          Text(
            title,

            style: const TextStyle(
              fontSize: 16,
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          Text(
            value,

            style: const TextStyle(
              fontSize: 22,
              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// GridView
// → Displays widgets in rows and columns.
//
// =====================================================
//
// GRIDVIEW.COUNT
//
// GridView.count(
//   crossAxisCount: 2,
//   children: [...],
// )
//
// crossAxisCount
// → Number of columns.
//
// =====================================================
//
// GRIDVIEW.EXTENT
//
// GridView.extent(
//   maxCrossAxisExtent: 150,
//   children: [...],
// )
//
// → Controls maximum size of items.
//
// =====================================================
//
// GRIDVIEW.BUILDER
//
// GridView.builder(
//   itemCount: 20,
//
//   gridDelegate: ...,
//
//   itemBuilder: (context, index) {
//     return Widget();
//   },
// )
//
// → Best for dynamic/large grids.
//
// =====================================================
//
// SPACING
//
// crossAxisSpacing
// → Horizontal spacing.
//
// mainAxisSpacing
// → Vertical spacing.
//
// =====================================================
//
// CHILD ASPECT RATIO
//
// childAspectRatio: 1
// → Square.
//
// childAspectRatio: 2
// → Wider.
//
// childAspectRatio: 0.5
// → Taller.
//
// =====================================================
//
// HORIZONTAL GRID
//
// scrollDirection: Axis.horizontal
//
// =====================================================
//
// COMMON USES
//
// • Dashboard
// • Products
// • Photo gallery
// • Categories
// • Menu
// • Apps
// • Courses
//
// =====================================================