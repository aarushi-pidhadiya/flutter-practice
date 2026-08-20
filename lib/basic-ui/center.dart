import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Center Examples"),
        ),

        body: Column(
          children: [

            // =================================================
            // 1. Center Text
            // =================================================

            const Center(
              child: Text(
                "Hello Flutter",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),


            // =================================================
            // 2. Center Container
            // =================================================

            Center(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,

                child: const Center(
                  child: Text(
                    "Centered Text",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),


            // =================================================
            // 3. Center with SizedBox
            // =================================================

            const Center(
              child: SizedBox(
                width: 150,
                height: 50,

                child: ColoredBox(
                  color: Colors.green,
                ),
              ),
            ),


            // =================================================
            // 4. Center Icon
            // =================================================

            const Center(
              child: Icon(
                Icons.person,
                size: 80,
              ),
            ),


            // =================================================
            // 5. Center with Padding
            // =================================================

            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Container(
                  width: 250,
                  height: 100,
                  color: Colors.orange,

                  child: const Center(
                    child: Text(
                      "Padding + Center",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}