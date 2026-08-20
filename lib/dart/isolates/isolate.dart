// Isolate.spawn() creates a new Isolate and sends one
// value to the function running inside that Isolate.
//
// Syntax:
//
// Isolate.spawn(
//   functionName,
//   data,
// );
//
// =====================================================

import 'dart:isolate';


// =====================================================
// 1. Spawn with String
// =====================================================

void printMessage(String message) {

  print("Message: $message");
}


// =====================================================
// 2. Spawn with Integer
// =====================================================

void printNumber(int number) {

  print("Number: $number");
}


// =====================================================
// 3. Spawn with List
// =====================================================

void printStudents(List<String> students) {

  print("Students:");

  for (String student in students) {

    print(student);
  }
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Main Isolate started.");


  // ===================================================
  // String
  // ===================================================

  await Isolate.spawn(
    printMessage,
    "Hello from Dart Isolate!",
  );


  // ===================================================
  // Integer
  // ===================================================

  await Isolate.spawn(
    printNumber,
    100,
  );


  // ===================================================
  // List
  // ===================================================

  List<String> students = [
    "A Patel",
    "Rahul",
    "Jay",
  ];


  await Isolate.spawn(
    printStudents,
    students,
  );


  // Give Isolates time to execute.

  await Future.delayed(
    Duration(seconds: 1),
  );


  print("Main Isolate finished.");
}


// =====================================================
// IMPORTANT RULE
// =====================================================
//
// The data passed to Isolate.spawn() must match the
// parameter expected by the function.
//
// Example:
//
// Isolate.spawn(
//   printMessage,
//   "Hello",
// );
//
// Function:
//
// void printMessage(String message) {
//   print(message);
// }
//
// =====================================================
//
// String → String parameter
// int    → int parameter
// List   → List parameter
//
// =====================================================