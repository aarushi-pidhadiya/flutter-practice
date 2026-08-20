import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Align Examples"),
        ),

        body: Column(
          children: [

            // =================================================
            // 1. Center
            // =================================================

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,

              child: const Align(
                alignment: Alignment.center,

                child: Text(
                  "Center",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),


            // =================================================
            // 2. Top Left
            // =================================================

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,

              child: const Align(
                alignment: Alignment.topLeft,

                child: Text(
                  "Top Left",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            // =================================================
            // 3. Top Right
            // =================================================

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.orange,

              child: const Align(
                alignment: Alignment.topRight,

                child: Text(
                  "Top Right",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            // =================================================
            // 4. Bottom Left
            // =================================================

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.purple,

              child: const Align(
                alignment: Alignment.bottomLeft,

                child: Text(
                  "Bottom Left",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            // =================================================
            // 5. Bottom Right
            // =================================================

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.red,

              child: const Align(
                alignment: Alignment.bottomRight,

                child: Text(
                  "Bottom Right",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            // =================================================
            // 6. Custom Alignment
            // =================================================
            //
            // Alignment values:
            //
            // x = -1 → left
            // x =  0 → center
            // x =  1 → right
            //
            // y = -1 → top
            // y =  0 → center
            // y =  1 → bottom
            // =================================================

            Container(
              width: double.infinity,
              height: 100,
              color: Colors.teal,

              child: const Align(
                alignment: Alignment(
                  0.5,
                  -0.5,
                ),

                child: Text(
                  "Custom Alignment",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            // =================================================
            // 7. Align Width Factor
            // =================================================
            //
            // widthFactor controls the width of Align
            // relative to its child.
            // =================================================

            const Align(
              alignment: Alignment.center,

              widthFactor: 2,

              child: Text(
                "Width Factor",
              ),
            ),


            // =================================================
            // 8. Align Height Factor
            // =================================================

            const Align(
              alignment: Alignment.center,

              heightFactor: 2,

              child: Text(
                "Height Factor",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//(-1,-1)       (0,-1)       (1,-1)
//  topLeft       topCenter     topRight
//
// (-1,0)        (0,0)         (1,0)
// centerLeft     center       centerRight
//
// (-1,1)        (0,1)         (1,1)
// bottomLeft   bottomCenter   bottomRight