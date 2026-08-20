// Card is a Material Design widget used to group related
// information inside a visually separated container.
//
// Important properties:
//
// child
// color
// elevation
// margin
// shape
// shadowColor
// clipBehavior
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
            "Card Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC CARD
              // =================================================

              Card(

                child: const Padding(
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "This is a basic Card.",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 2. CARD WITH ELEVATION
              // =================================================
              //
              // elevation controls the shadow/depth.
              // =================================================

              Card(

                elevation: 10,

                child: const Padding(
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "Card with elevation",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 3. CARD WITH MARGIN
              // =================================================

              Card(

                margin: const EdgeInsets.all(20),

                child: const Padding(
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "Card with margin",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 4. CARD WITH COLOR
              // =================================================

              Card(

                color: Colors.blue.shade100,

                child: const Padding(
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "Colored Card",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 5. CARD WITH ROUNDED CORNERS
              // =================================================

              Card(

                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(20),
                ),

                child: const Padding(
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "Rounded Card",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 6. CARD WITH SHADOW COLOR
              // =================================================

              Card(

                elevation: 8,

                shadowColor: Colors.blue,

                child: const Padding(
                  padding: EdgeInsets.all(20),

                  child: Text(
                    "Card with shadow",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 7. CARD + LISTTILE
              // =================================================

              const Card(

                child: ListTile(

                  leading: Icon(
                    Icons.person,
                  ),

                  title: Text(
                    "A Patel",
                  ),

                  subtitle: Text(
                    "Flutter Developer",
                  ),

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 8. PROFILE CARD
              // =================================================

              Card(

                margin: const EdgeInsets.all(15),

                elevation: 5,

                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: Row(
                    children: [

                      const CircleAvatar(
                        radius: 40,

                        child: Icon(
                          Icons.person,
                          size: 45,
                        ),
                      ),

                      const SizedBox(
                        width: 15,
                      ),

                      Column(
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

                          SizedBox(
                            height: 5,
                          ),

                          Text(
                            "Flutter Developer",
                          ),

                          Text(
                            "Learning Flutter UI",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 9. CARD WITH BUTTON
              // =================================================

              Card(

                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,

                    children: [

                      const Text(
                        "Flutter Course",

                        style: TextStyle(
                          fontSize: 22,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        "Learn Flutter from basics "
                            "to advanced development.",
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      ElevatedButton(
                        onPressed: () {},

                        child: const Text(
                          "Enroll Now",
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 10. PRODUCT CARD
              // =================================================

              Card(

                clipBehavior:
                Clip.antiAlias,

                child: Column(
                  children: [

                    Container(
                      width: double.infinity,
                      height: 150,

                      color: Colors.grey.shade300,

                      child: const Icon(
                        Icons.shopping_bag,
                        size: 70,
                      ),
                    ),

                    Padding(
                      padding:
                      const EdgeInsets.all(15),

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          const Text(
                            "Product Name",

                            style: TextStyle(
                              fontSize: 20,
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

                          const SizedBox(
                            height: 10,
                          ),

                          SizedBox(
                            width: double.infinity,

                            child:
                            ElevatedButton(
                              onPressed: () {},

                              child: const Text(
                                "Add to Cart",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 11. DASHBOARD CARD
              // =================================================

              Card(

                elevation: 5,

                child: Padding(
                  padding:
                  const EdgeInsets.all(20),

                  child: Row(
                    children: [

                      const Icon(
                        Icons.people,
                        size: 50,
                      ),

                      const SizedBox(
                        width: 20,
                      ),

                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: const [

                          Text(
                            "Students",

                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),

                          Text(
                            "250",

                            style: TextStyle(
                              fontSize: 28,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 12. DASHBOARD CARDS IN ROW
              // =================================================

              Row(
                children: [

                  Expanded(
                    child: Card(

                      child: Padding(
                        padding:
                        const EdgeInsets.all(15),

                        child: Column(
                          children: const [

                            Icon(
                              Icons.people,
                              size: 40,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Text(
                              "Students",
                            ),

                            Text(
                              "250",

                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Card(

                      child: Padding(
                        padding:
                        const EdgeInsets.all(15),

                        child: Column(
                          children: const [

                            Icon(
                              Icons.book,
                              size: 40,
                            ),

                            SizedBox(
                              height: 10,
                            ),

                            Text(
                              "Courses",
                            ),

                            Text(
                              "12",

                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 13. CARD WITH ROW + COLUMN + BUTTON
              // =================================================

              Card(

                elevation: 5,

                child: Padding(
                  padding:
                  const EdgeInsets.all(15),

                  child: Row(
                    children: [

                      const CircleAvatar(
                        radius: 30,

                        child: Icon(
                          Icons.person,
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
                                fontSize: 18,
                                fontWeight:
                                FontWeight.bold,
                              ),
                            ),

                            Text(
                              "Flutter Developer",
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {},

                        icon: const Icon(
                          Icons.edit,
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 14. CLICKABLE CARD
              // =================================================

              Card(

                child: InkWell(

                  onTap: () {
                    // Code runs when Card is tapped.
                  },

                  child: const Padding(
                    padding:
                    EdgeInsets.all(25),

                    child: Row(
                      children: [

                        Icon(
                          Icons.touch_app,
                          size: 40,
                        ),

                        SizedBox(
                          width: 15,
                        ),

                        Text(
                          "Tap this Card",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 15. CARD WITH BORDER
              // =================================================

              Card(

                shape:
                RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(15),

                  side: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),

                child: const Padding(
                  padding:
                  EdgeInsets.all(20),

                  child: Text(
                    "Card with border",
                  ),
                ),
              ),


              const SizedBox(
                height: 20,
              ),


              // =================================================
              // 16. CARD WITH IMAGE-STYLE HEADER
              // =================================================

              Card(

                clipBehavior:
                Clip.antiAlias,

                child: Column(
                  children: [

                    Container(
                      height: 180,
                      width: double.infinity,

                      color: Colors.blue.shade200,

                      child: const Center(
                        child: Icon(
                          Icons.flutter_dash,
                          size: 80,
                        ),
                      ),
                    ),

                    const Padding(
                      padding:
                      EdgeInsets.all(15),

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          Text(
                            "Flutter Development",

                            style: TextStyle(
                              fontSize: 22,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          Text(
                            "Build beautiful "
                                "cross-platform apps "
                                "with Flutter.",
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
// Card
// → Groups related content into a Material card.
//
// =====================================================
//
// IMPORTANT PROPERTIES
//
// child
// → Content inside Card.
//
// elevation
// → Controls shadow/depth.
//
// margin
// → Space outside Card.
//
// color
// → Card background color.
//
// shape
// → Card shape/border.
//
// shadowColor
// → Shadow color.
//
// clipBehavior
// → Controls how child content is clipped.
//
// =====================================================
//
// COMMON PATTERN
//
// Card(
//   elevation: 5,
//   child: Padding(
//     padding: EdgeInsets.all(20),
//     child: Text("Hello"),
//   ),
// )
//
// =====================================================
//
// COMMON USES
//
// • Profile cards
// • Product cards
// • Dashboard cards
// • Course cards
// • Student cards
// • News cards
// • Settings cards
//
// =====================================================
//
// CARD + ROW
//
// Card
// └── Row
//     ├── Icon
//     ├── Expanded
//     └── Button
//
// =====================================================
//
// CARD + COLUMN
//
// Card
// └── Column
//     ├── Image
//     ├── Text
//     └── Button
//
// =====================================================