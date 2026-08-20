// =====================================================
// FUTURE - COMPLETE TASK
// File: future_task.dart
// =====================================================
//
// Future represents a value that will be available later.
//
// Common examples:
// - API calls
// - Database operations
// - File operations
// - Network requests
//
// =====================================================


// =====================================================
// 1. Function Returning Future<String>
// =====================================================

Future<String> getStudentName() {

  return Future.value("A Patel");
}


// =====================================================
// 2. Function Returning Future<int>
// =====================================================

Future<int> getStudentAge() {

  return Future.value(20);
}


// =====================================================
// 3. Future<void>
// =====================================================
//
// Future<void> means the Future completes without
// returning a value.
// =====================================================

Future<void> showMessage() {

  return Future.value();
}


// =====================================================
// 4. Future.value()
// =====================================================
//
// Future.value() creates an already completed Future.
// =====================================================

Future<String> getCourse() {

  return Future.value("Flutter");
}


// =====================================================
// 5. Future.delayed()
// =====================================================
//
// Future.delayed() completes after the specified time.
// =====================================================

Future<String> getData() {

  return Future.delayed(
    Duration(seconds: 2),
        () {

      return "Data received";
    },
  );
}


// =====================================================
// 6. Future.delayed() with int
// =====================================================

Future<int> calculateMarks() {

  return Future.delayed(
    Duration(seconds: 1),
        () {

      return 85;
    },
  );
}


// =====================================================
// 7. Future with then()
// =====================================================
//
// .then() runs when the Future successfully completes.
// =====================================================

void useThen() {

  getStudentName().then((name) {

    print("Student Name: $name");
  });
}


// =====================================================
// 8. Future with then() and Multiple Operations
// =====================================================

void multipleThen() {

  getStudentName().then((name) {

    print("Name: $name");

    return getStudentAge();

  }).then((age) {

    print("Age: $age");
  });
}


// =====================================================
// 9. Future with Delay and then()
// =====================================================

void delayedFuture() {

  print("Request started");


  getData().then((data) {

    print(data);
  });


  print("Waiting for data...");
}


// =====================================================
// 10. Future with Error
// =====================================================

Future<String> getError() {

  return Future.error(
    Exception("Something went wrong"),
  );
}


// =====================================================
// 11. Future Error with then() and catchError()
// =====================================================

void handleError() {

  getError().then((data) {

    print("Data: $data");

  }).catchError((error) {

    print("Error: $error");
  });
}


// =====================================================
// MAIN FUNCTION
// =====================================================

void main() {

  // ===================================================
  // Example 1 - Future<String>
  // ===================================================

  print("===== Future<String> =====");


  Future<String> name = getStudentName();


  name.then((value) {

    print("Name: $value");
  });


  // ===================================================
  // Example 2 - Future<int>
  // ===================================================

  print("");


  print("===== Future<int> =====");


  getStudentAge().then((age) {

    print("Age: $age");
  });


  // ===================================================
  // Example 3 - Future<void>
  // ===================================================

  print("");


  print("===== Future<void> =====");


  showMessage().then((_) {

    print("Message Future completed");
  });


  // ===================================================
  // Example 4 - Future.value()
  // ===================================================

  print("");


  print("===== Future.value() =====");


  getCourse().then((course) {

    print("Course: $course");
  });


  // ===================================================
  // Example 5 - Future.delayed()
  // ===================================================

  print("");


  print("===== Future.delayed() =====");


  delayedFuture();


  // ===================================================
  // Example 6 - Delayed Integer
  // ===================================================

  print("");


  print("===== Delayed Integer =====");


  calculateMarks().then((marks) {

    print("Marks: $marks");
  });


  // ===================================================
  // Example 7 - then()
  // ===================================================

  print("");


  print("===== then() =====");


  useThen();


  // ===================================================
  // Example 8 - Multiple then()
  // ===================================================

  print("");


  print("===== Multiple then() =====");


  multipleThen();


  // ===================================================
  // Example 9 - Error Handling
  // ===================================================

  print("");


  print("===== Future Error =====");


  handleError();
}


// =====================================================
// FUTURE RULES
// =====================================================
//
// 1. Future represents a value available later.
//
// 2. Future<String>
//    → Future will produce a String.
//
// 3. Future<int>
//    → Future will produce an int.
//
// 4. Future<double>
//    → Future will produce a double.
//
// 5. Future<bool>
//    → Future will produce a bool.
//
// 6. Future<void>
//    → Future completes without returning a value.
//
// 7. Future.value()
//    → Creates an already completed Future.
//
// 8. Future.delayed()
//    → Completes after a specified duration.
//
// 9. .then()
//    → Runs when the Future completes successfully.
//
// 10. .catchError()
//     → Handles an error from a Future.
//
// 11. Future.error()
//     → Creates a Future that completes with an error.
//
// =====================================================


// =====================================================
// QUICK REVISION
// =====================================================
//
// Future<String>
//        ↓
// String will arrive later
//
// Future<int>
//        ↓
// int will arrive later
//
// Future<void>
//        ↓
// Operation completes later
//
// Future.value()
//        ↓
// Completed Future
//
// Future.delayed()
//        ↓
// Future completes after delay
//
// .then()
//        ↓
// Handle successful result
//
// .catchError()
//        ↓
// Handle error
//
// =====================================================