import 'package:flutter/material.dart';

// This class combines different Text widget properties.
class TextPractice extends StatelessWidget {
  const TextPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        // AppBar at the top of the screen.
        appBar: AppBar(
          title: Text("Text Practice"),
        ),

        body: Padding(

          // Adds space around the entire Column.
          padding: EdgeInsets.all(20),

          child: Column(

            // Aligns the children to the left.
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // Main heading.
              Text(
                "Flutter Developer",

                // Customize the heading.
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Adds vertical space between widgets.
              SizedBox(height: 20),

              // Displays the student's name.
              Text(
                "Name: Aarushi Patel",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // Displays the student's age.
              Text(
                "Age: 20",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // Displays the course name.
              Text(
                "Course: Flutter",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              // Adds more vertical space.
              SizedBox(height: 20),

              // Long text example.
              Text(
                "I am learning Flutter and building beautiful applications.",

                // Allows a maximum of two lines.
                maxLines: 2,

                // Displays "..." if the text doesn't fit.
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}