import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("SizedBox Examples"),
        ),

        body: Column(
          children: [

            // =================================================
            // 1. SizedBox - Fixed Height
            // =================================================

            const SizedBox(
              height: 30,
            ),

            const Text(
              "Hello Flutter",
              style: TextStyle(
                fontSize: 24,
              ),
            ),


            // =================================================
            // 2. SizedBox - Fixed Width
            // =================================================

            const SizedBox(
              width: 100,
              height: 50,
              child: ColoredBox(
                color: Colors.blue,
              ),
            ),


            // =================================================
            // 3. SizedBox - Width + Height
            // =================================================

            const SizedBox(
              width: 200,
              height: 100,
              child: ColoredBox(
                color: Colors.green,
              ),
            ),


            // =================================================
            // 4. SizedBox - Empty Space
            // =================================================

            const SizedBox(
              height: 20,
            ),


            const Text(
              "After 20 pixels of space",
            ),


            // =================================================
            // 5. SizedBox.expand()
            // =================================================
            //
            // Makes the child take all available space.
            //
            // Usually use carefully inside Column/Row.
            // =================================================

            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Button"),
              ),
            ),


            // =================================================
            // 6. SizedBox.shrink()
            // =================================================
            //
            // Creates a box with zero width and height.
            // =================================================

            const SizedBox.shrink(),


            // =================================================
            // 7. SizedBox with Text
            // =================================================

            const SizedBox(
              width: 250,
              child: Text(
                "This Text is inside a SizedBox.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}