// StreamController allows us to manually control a Stream.
//
// We can:
//   add()       → send data
//   addError()  → send an error
//   close()     → close the Stream
//   stream      → access the Stream
//
// =====================================================

import 'dart:async';


// =====================================================
// 1. BASIC STREAM CONTROLLER
// =====================================================

void basicController() {

  // Create StreamController.

  final controller = StreamController<int>();


  // Listen to the Stream.

  controller.stream.listen((value) {

    print("Received: $value");
  });


  // Add values manually.

  controller.add(10);

  controller.add(20);

  controller.add(30);


  // Close the Stream.

  controller.close();
}


// =====================================================
// 2. STRING STREAM CONTROLLER
// =====================================================

void stringController() {

  final controller = StreamController<String>();


  controller.stream.listen((student) {

    print("Student: $student");
  });


  controller.add("A Patel");

  controller.add("Rahul");

  controller.add("Jay");


  controller.close();
}


// =====================================================
// 3. STREAM CONTROLLER WITH DELAY
// =====================================================

Future<void> delayedController() async {

  final controller = StreamController<int>();


  controller.stream.listen((number) {

    print("Number: $number");
  });


  controller.add(1);


  await Future.delayed(
    Duration(seconds: 1),
  );


  controller.add(2);


  await Future.delayed(
    Duration(seconds: 1),
  );


  controller.add(3);


  await Future.delayed(
    Duration(seconds: 1),
  );


  controller.close();
}


// =====================================================
// 4. addError()
// =====================================================
//
// addError() sends an error through the Stream.
// =====================================================

void controllerError() {

  final controller = StreamController<int>();


  controller.stream.listen(

        (value) {

      print("Value: $value");
    },

    onError: (error) {

      print("Stream Error: $error");
    },
  );


  controller.add(10);

  controller.add(20);


  controller.addError(
    Exception("Something went wrong"),
  );


  controller.add(30);


  controller.close();
}


// =====================================================
// 5. Listen with onDone
// =====================================================
//
// onDone runs when the Stream is closed.
// =====================================================

void controllerOnDone() {

  final controller = StreamController<String>();


  controller.stream.listen(

        (value) {

      print("Received: $value");
    },

    onDone: () {

      print("Stream is completed.");
    },
  );


  controller.add("Hello");

  controller.add("Flutter");


  controller.close();
}


// =====================================================
// 6. PRACTICAL TASK
// =====================================================
//
// Student Attendance System
//
// We manually send attendance updates through a Stream.
// =====================================================

Future<void> attendanceController() async {

  final controller = StreamController<int>();


  // Listen for attendance updates.

  controller.stream.listen(

        (attendance) {

      print(
        "Attendance: $attendance%",
      );
    },

    onDone: () {

      print("Attendance Stream completed.");
    },
  );


  // First update.

  controller.add(75);


  await Future.delayed(
    Duration(seconds: 1),
  );


  // Second update.

  controller.add(80);


  await Future.delayed(
    Duration(seconds: 1),
  );


  // Third update.

  controller.add(90);


  await Future.delayed(
    Duration(seconds: 1),
  );


  // Final update.

  controller.add(95);


  // Close Stream.

  await controller.close();
}


// =====================================================
// 7. PRACTICAL TASK - STUDENT STATUS
// =====================================================

void studentStatusController() {

  final controller = StreamController<String>();


  controller.stream.listen(

        (status) {

      print(
        "Student Status: $status",
      );
    },

    onDone: () {

      print("Status Stream completed.");
    },
  );


  controller.add("Present");

  controller.add("Present");

  controller.add("Absent");

  controller.add("Present");


  controller.close();
}


// =====================================================
// MAIN FUNCTION
// =====================================================

Future<void> main() async {

  // ===================================================
  // Example 1
  // ===================================================

  print("===== BASIC CONTROLLER =====");

  basicController();


  print("");


  // ===================================================
  // Example 2
  // ===================================================

  print("===== STRING CONTROLLER =====");

  stringController();


  print("");


  // ===================================================
  // Example 3
  // ===================================================

  print("===== DELAYED CONTROLLER =====");

  await delayedController();


  print("");


  // ===================================================
  // Example 4
  // ===================================================

  print("===== CONTROLLER ERROR =====");

  controllerError();


  print("");


  // ===================================================
  // Example 5
  // ===================================================

  print("===== ON DONE =====");

  controllerOnDone();


  print("");


  // ===================================================
  // Example 6
  // ===================================================

  print("===== ATTENDANCE SYSTEM =====");

  await attendanceController();


  print("");


  // ===================================================
  // Example 7
  // ===================================================

  print("===== STUDENT STATUS =====");

  studentStatusController();
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// StreamController
//        ↓
// controller.stream
//        ↓
//      listen()
//        ↓
//    Receive data
//
//
// controller.add(value)
//        ↓
// Send data to Stream
//
//
// controller.addError(error)
//        ↓
// Send error to Stream
//
//
// controller.close()
//        ↓
// Complete Stream
//
// =====================================================


// =====================================================
// IMPORTANT
// =====================================================
//
// import 'dart:async';
//
// is required for StreamController.
//
// =====================================================