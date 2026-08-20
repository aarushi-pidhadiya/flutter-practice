// Student Management System
//
// We will use an Isolate to process student marks.
//
// The Main Isolate will:
//   1. Create student data
//   2. Create ReceivePort
//   3. Start another Isolate
//   4. Send data to the Isolate
//   5. Receive the calculated result
//
// The new Isolate will:
//   1. Calculate total marks
//   2. Calculate average
//   3. Find highest mark
//   4. Find lowest mark
//   5. Count passed students
//   6. Send results back
//
// =====================================================

import 'dart:isolate';


// =====================================================
// STUDENT DATA MODEL
// =====================================================

class Student {

  final String name;

  final int marks;


  Student(
      this.name,
      this.marks,
      );
}


// =====================================================
// ISOLATE FUNCTION
// =====================================================
//
// This function runs inside the new Isolate.
//
// IMPORTANT:
// The function receives ONE argument from spawn().
//
// =====================================================

void processStudents(
    List<dynamic> data,
    ) {

  // ===================================================
  // Get student data
  // ===================================================

  List<Student> students = data[0];


  // ===================================================
  // Get SendPort
  // ===================================================

  SendPort sendPort = data[1];


  // ===================================================
  // Variables
  // ===================================================

  int totalMarks = 0;

  int highestMarks = students[0].marks;

  int lowestMarks = students[0].marks;

  int passedStudents = 0;


  // ===================================================
  // Process students
  // ===================================================

  for (Student student in students) {

    // Add marks.

    totalMarks += student.marks;


    // Find highest marks.

    if (student.marks > highestMarks) {

      highestMarks = student.marks;
    }


    // Find lowest marks.

    if (student.marks < lowestMarks) {

      lowestMarks = student.marks;
    }


    // Check passing marks.

    if (student.marks >= 50) {

      passedStudents++;
    }
  }


  // ===================================================
  // Calculate average
  // ===================================================

  double average =
      totalMarks / students.length;


  // ===================================================
  // Send result back to Main Isolate
  // ===================================================

  sendPort.send({

    "total": totalMarks,

    "average": average,

    "highest": highestMarks,

    "lowest": lowestMarks,

    "passed": passedStudents,

    "totalStudents": students.length,
  });
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("======================================");

  print("   STUDENT MANAGEMENT SYSTEM");

  print("======================================");


  // ===================================================
  // Create Student Data
  // ===================================================

  List<Student> students = [

    Student(
      "A Patel",
      85,
    ),

    Student(
      "Rahul",
      90,
    ),

    Student(
      "Jay",
      45,
    ),

    Student(
      "Ravi",
      78,
    ),

    Student(
      "Aman",
      95,
    ),

    Student(
      "Karan",
      38,
    ),
  ];


  // ===================================================
  // Create ReceivePort
  // ===================================================

  ReceivePort receivePort = ReceivePort();


  // ===================================================
  // Create New Isolate
  // ===================================================

  Isolate isolate = await Isolate.spawn(

    processStudents,

    [
      students,

      receivePort.sendPort,
    ],
  );


  // ===================================================
  // Receive Result
  // ===================================================

  receivePort.listen((message) {

    Map<String, dynamic> result =
    Map<String, dynamic>.from(message);


    // =================================================
    // Display Results
    // =================================================

    print("");

    print("========== RESULTS ==========");


    print(
      "Total Students: "
          "${result["totalStudents"]}",
    );


    print(
      "Total Marks: "
          "${result["total"]}",
    );


    print(
      "Average Marks: "
          "${result["average"]}",
    );


    print(
      "Highest Marks: "
          "${result["highest"]}",
    );


    print(
      "Lowest Marks: "
          "${result["lowest"]}",
    );


    print(
      "Passed Students: "
          "${result["passed"]}",
    );


    print("=============================");


    // =================================================
    // Close ReceivePort
    // =================================================

    receivePort.close();


    // =================================================
    // Stop Isolate
    // =================================================

    isolate.kill(
      priority: Isolate.immediate,
    );
  });


  // ===================================================
  // Keep Main Isolate alive until result arrives.
  // ===================================================

  await Future.delayed(
    Duration(seconds: 2),
  );


  print("");

  print("Program completed.");
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// Isolate.spawn()
// → Creates a new Isolate.
//
// SendPort
// → Sends data.
//
// ReceivePort
// → Receives data.
//
// sendPort.send()
// → Sends result back.
//
// isolate.kill()
// → Stops the Isolate.
//
// =====================================================
//
// FLOW:
//
//             MAIN ISOLATE
//                  │
//                  │ Student Data
//                  ↓
//            Isolate.spawn()
//                  │
//                  ↓
//          PROCESS STUDENTS
//                  │
//        ┌─────────┼─────────┐
//        ↓         ↓         ↓
//      Total    Average    Highest
//        │         │         │
//        └─────────┼─────────┘
//                  ↓
//              SendPort
//                  │
//                  ↓
//             ReceivePort
//                  │
//                  ↓
//             MAIN ISOLATE
//
// =====================================================