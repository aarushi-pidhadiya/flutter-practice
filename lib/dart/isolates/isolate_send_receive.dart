// Isolates communicate using:
//
// SendPort    → sends messages
// ReceivePort → receives messages
//
// Isolates do not directly share variables.
//
// =====================================================

import 'dart:isolate';


// =====================================================
// PART 1
// BASIC SEND & RECEIVE
// =====================================================


// =====================================================
// Function running inside the new Isolate
// =====================================================

void sendMessage(SendPort sendPort) {

  // Send message to Main Isolate.

  sendPort.send(
    "Hello from the new Isolate!",
  );
}


// =====================================================
// Basic Send & Receive Example
// =====================================================

Future<void> basicSendReceive() async {

  print("===== BASIC SEND & RECEIVE =====");


  // Create ReceivePort.

  ReceivePort receivePort = ReceivePort();


  // Create new Isolate.

  Isolate isolate = await Isolate.spawn(
    sendMessage,
    receivePort.sendPort,
  );


  // Receive message.

  receivePort.listen((message) {

    print(
      "Main received: $message",
    );


    // Close ReceivePort.

    receivePort.close();


    // Stop Isolate.

    isolate.kill(
      priority: Isolate.immediate,
    );
  });


  // Give Isolate time to execute.

  await Future.delayed(
    Duration(seconds: 1),
  );
}


// =====================================================
// PART 2
// SEND INTEGER
// =====================================================

void sendNumber(SendPort sendPort) {

  int number = 100;


  sendPort.send(number);
}


// =====================================================
// Integer Send & Receive
// =====================================================

Future<void> sendInteger() async {

  print("===== INTEGER =====");


  ReceivePort receivePort = ReceivePort();


  Isolate isolate = await Isolate.spawn(
    sendNumber,
    receivePort.sendPort,
  );


  receivePort.listen((message) {

    print(
      "Received number: $message",
    );


    receivePort.close();


    isolate.kill(
      priority: Isolate.immediate,
    );
  });


  await Future.delayed(
    Duration(seconds: 1),
  );
}


// =====================================================
// PART 3
// SEND LIST
// =====================================================

void sendStudentList(SendPort sendPort) {

  List<String> students = [

    "A Patel",

    "Rahul",

    "Jay",
  ];


  sendPort.send(students);
}


// =====================================================
// List Send & Receive
// =====================================================

Future<void> sendList() async {

  print("===== LIST =====");


  ReceivePort receivePort = ReceivePort();


  Isolate isolate = await Isolate.spawn(
    sendStudentList,
    receivePort.sendPort,
  );


  receivePort.listen((message) {

    List<String> students =
    List<String>.from(message);


    for (String student in students) {

      print(
        "Student: $student",
      );
    }


    receivePort.close();


    isolate.kill(
      priority: Isolate.immediate,
    );
  });


  await Future.delayed(
    Duration(seconds: 1),
  );
}


// =====================================================
// PART 4
// PRACTICAL TASK
// CALCULATE STUDENT MARKS
// =====================================================
//
// Main Isolate sends:
//
// 1. Student marks
// 2. SendPort
//
// New Isolate calculates:
//
// Total
// Average
//
// Then sends the result back.
//
// =====================================================


// =====================================================
// calculateMarks()
// =====================================================

void calculateMarks(List<dynamic> data) {

  // Get marks from data.

  List<int> marks = data[0];


  // Get SendPort from data.

  SendPort sendPort = data[1];


  // ===================================================
  // Calculate Total
  // ===================================================

  int total = 0;


  for (int mark in marks) {

    total += mark;
  }


  // ===================================================
  // Calculate Average
  // ===================================================

  double average =
      total / marks.length;


  // ===================================================
  // Send Result Back
  // ===================================================

  sendPort.send({

    "total": total,

    "average": average,
  });
}


// =====================================================
// MARKS TASK
// =====================================================

Future<void> marksTask() async {

  print("===== STUDENT MARKS TASK =====");


  // Student marks.

  List<int> marks = [

    85,

    90,

    78,

    88,

    95,
  ];


  // Create ReceivePort.

  ReceivePort receivePort = ReceivePort();


  // ===================================================
  // Spawn Isolate
  // ===================================================

  Isolate isolate = await Isolate.spawn(

    calculateMarks,

    [
      marks,

      receivePort.sendPort,
    ],
  );


  // ===================================================
  // Receive Result
  // ===================================================

  receivePort.listen((message) {

    Map<String, dynamic> result =
    Map<String, dynamic>.from(message);


    print("");

    print("Student Marks Result");

    print("--------------------");


    print(
      "Total: ${result["total"]}",
    );


    print(
      "Average: ${result["average"]}",
    );


    // Close ReceivePort.

    receivePort.close();


    // Stop Isolate.

    isolate.kill(

      priority: Isolate.immediate,
    );
  });


  // Give Isolate time to complete.

  await Future.delayed(

    Duration(seconds: 2),
  );
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Main Isolate started.");

  print("");


  // ===================================================
  // Basic message
  // ===================================================

  await basicSendReceive();

  print("");


  // ===================================================
  // Integer
  // ===================================================

  await sendInteger();

  print("");


  // ===================================================
  // List
  // ===================================================

  await sendList();

  print("");


  // ===================================================
  // Practical Marks Task
  // ===================================================

  await marksTask();

  print("");


  print("All Isolate examples completed.");
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// ReceivePort
// → Receives messages.
//
// SendPort
// → Sends messages.
//
// sendPort.send()
// → Sends data.
//
// receivePort.listen()
// → Receives data.
//
// Isolate.spawn()
// → Creates another Isolate.
//
// =====================================================
//
// COMMUNICATION
//
// Main Isolate
//      │
//      │ SendPort
//      ↓
// New Isolate
//      │
//      │ send()
//      ↓
// ReceivePort
//      │
//      ↓
// Main Isolate
//
// =====================================================
//
// IMPORTANT:
//
// Isolate.spawn() requires the function and the data
// passed to it to match.
//
// Example:
//
// Isolate.spawn(
//   calculateMarks,
//   [marks, receivePort.sendPort],
// );
//
// Function:
//
// void calculateMarks(List<dynamic> data) {
//   ...
// }
//
// =====================================================