// ListView is used to create a scrollable list.
//
// Important types:
//
// 1. ListView()
// 2. ListView.builder()
// 3. ListView.separated()
// 4. ListView.custom()
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
            "ListView Examples",
          ),
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [

              // =================================================
              // 1. BASIC LISTVIEW
              // =================================================
              //
              // ListView displays widgets in a scrollable list.
              //
              // Here we give it a fixed height because it is
              // inside another scrollable Column.
              // =================================================

              SizedBox(
                height: 250,

                child: ListView(
                  children: const [

                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),

                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                    ),

                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),

                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 2. LISTVIEW WITH TEXT
              // =================================================

              SizedBox(
                height: 200,

                child: ListView(
                  children: const [

                    Padding(
                      padding: EdgeInsets.all(15),

                      child: Text(
                        "Flutter",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15),

                      child: Text(
                        "Dart",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(15),

                      child: Text(
                        "Firebase",
                        style: TextStyle(
                          fontSize: 20,
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
              // 3. HORIZONTAL LISTVIEW
              // =================================================

              SizedBox(
                height: 120,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [

                    Container(
                      width: 120,
                      margin: const EdgeInsets.all(10),
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
                      width: 120,
                      margin: const EdgeInsets.all(10),
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
                      width: 120,
                      margin: const EdgeInsets.all(10),
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
                      width: 120,
                      margin: const EdgeInsets.all(10),
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
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 4. LISTVIEW.BUILDER
              // =================================================
              //
              // builder is useful when you have many items.
              //
              // itemCount
              // → Number of items.
              //
              // itemBuilder
              // → Builds each item.
              // =================================================

              SizedBox(
                height: 300,

                child: ListView.builder(

                  itemCount: 10,

                  itemBuilder: (
                      BuildContext context,
                      int index,
                      ) {

                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          "${index + 1}",
                        ),
                      ),

                      title: Text(
                        "Student ${index + 1}",
                      ),

                      subtitle: const Text(
                        "Flutter Student",
                      ),
                    );
                  },
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 5. LISTVIEW.BUILDER WITH LIST
              // =================================================

              Builder(
                builder: (context) {

                  final List<String> students = [
                    "A Patel",
                    "Rahul",
                    "Aarav",
                    "Priya",
                    "Riya",
                  ];

                  return SizedBox(
                    height: 300,

                    child: ListView.builder(

                      itemCount: students.length,

                      itemBuilder: (
                          context,
                          index,
                          ) {

                        return ListTile(

                          leading: const Icon(
                            Icons.person,
                          ),

                          title: Text(
                            students[index],
                          ),

                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 6. LISTVIEW.SEPARATED
              // =================================================
              //
              // Adds a separator between items.
              // =================================================

              SizedBox(
                height: 300,

                child: ListView.separated(

                  itemCount: 5,

                  itemBuilder: (
                      context,
                      index,
                      ) {

                    return ListTile(

                      leading: const Icon(
                        Icons.task,
                      ),

                      title: Text(
                        "Task ${index + 1}",
                      ),
                    );
                  },

                  separatorBuilder: (
                      context,
                      index,
                      ) {

                    return const Divider();
                  },
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 7. LISTTILE
              // =================================================
              //
              // ListTile is commonly used inside ListView.
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
                height: 10,
              ),


              // =================================================
              // 8. LISTTILE WITH THREE LINES
              // =================================================

              const Card(

                child: ListTile(

                  leading: CircleAvatar(
                    child: Icon(
                      Icons.person,
                    ),
                  ),

                  title: Text(
                    "A Patel",
                  ),

                  subtitle: Text(
                    "Flutter Developer\n"
                        "Learning UI Development",
                  ),

                  isThreeLine: true,

                  trailing: Icon(
                    Icons.more_vert,
                  ),
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 9. LISTVIEW WITH CARDS
              // =================================================

              SizedBox(
                height: 300,

                child: ListView.builder(

                  itemCount: 5,

                  itemBuilder: (
                      context,
                      index,
                      ) {

                    return Card(

                      margin: const EdgeInsets.all(8),

                      child: ListTile(

                        leading: CircleAvatar(
                          child: Text(
                            "${index + 1}",
                          ),
                        ),

                        title: Text(
                          "Course ${index + 1}",
                        ),

                        subtitle: const Text(
                          "Flutter Development",
                        ),

                        trailing: ElevatedButton(
                          onPressed: () {},

                          child: const Text(
                            "View",
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
              // 10. LISTVIEW WITH ICON + BUTTON
              // =================================================

              SizedBox(
                height: 250,

                child: ListView(
                  children: [

                    ListTile(
                      leading: const Icon(
                        Icons.home,
                      ),

                      title: const Text(
                        "Home",
                      ),

                      trailing: ElevatedButton(
                        onPressed: () {},

                        child: const Text(
                          "Open",
                        ),
                      ),
                    ),

                    ListTile(
                      leading: const Icon(
                        Icons.person,
                      ),

                      title: const Text(
                        "Profile",
                      ),

                      trailing: ElevatedButton(
                        onPressed: () {},

                        child: const Text(
                          "Open",
                        ),
                      ),
                    ),

                    ListTile(
                      leading: const Icon(
                        Icons.settings,
                      ),

                      title: const Text(
                        "Settings",
                      ),

                      trailing: ElevatedButton(
                        onPressed: () {},

                        child: const Text(
                          "Open",
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
              // 11. LISTVIEW WITH DIVIDER
              // =================================================

              SizedBox(
                height: 250,

                child: ListView(
                  children: const [

                    ListTile(
                      title: Text("Item 1"),
                    ),

                    Divider(),

                    ListTile(
                      title: Text("Item 2"),
                    ),

                    Divider(),

                    ListTile(
                      title: Text("Item 3"),
                    ),

                    Divider(),

                    ListTile(
                      title: Text("Item 4"),
                    ),
                  ],
                ),
              ),


              const SizedBox(
                height: 30,
              ),


              // =================================================
              // 12. REAL-WORLD STUDENT LIST
              // =================================================

              SizedBox(
                height: 400,

                child: ListView.builder(

                  itemCount: 6,

                  itemBuilder: (
                      context,
                      index,
                      ) {

                    return Card(

                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 6,
                      ),

                      child: ListTile(

                        leading: CircleAvatar(
                          child: Text(
                            "${index + 1}",
                          ),
                        ),

                        title: Text(
                          "Student ${index + 1}",
                        ),

                        subtitle: const Text(
                          "Flutter Development",
                        ),

                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
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
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// ListView
// → Creates a scrollable list.
//
// =====================================================
//
// BASIC:
//
// ListView(
//   children: [
//     Text("One"),
//     Text("Two"),
//   ],
// )
//
// =====================================================
//
// BUILDER:
//
// ListView.builder(
//   itemCount: 10,
//   itemBuilder: (context, index) {
//     return Text("Item");
//   },
// )
//
// Best for dynamic/large lists.
//
// =====================================================
//
// SEPARATED:
//
// ListView.separated(
//   itemCount: 10,
//   itemBuilder: (context, index) {
//     return Text("Item");
//   },
//   separatorBuilder: (context, index) {
//     return Divider();
//   },
// )
//
// =====================================================
//
// HORIZONTAL:
//
// ListView(
//   scrollDirection: Axis.horizontal,
//   children: [
//     ...
//   ],
// )
//
// =====================================================
//
// IMPORTANT:
//
// itemCount
// → Number of items.
//
// itemBuilder
// → Builds each item.
//
// scrollDirection
// → Vertical or horizontal.
//
// =====================================================
//
// COMMON USES:
//
// • Student lists
// • Product lists
// • Chat messages
// • Notifications
// • Settings
// • Tasks
// • Contacts
//
// =====================================================