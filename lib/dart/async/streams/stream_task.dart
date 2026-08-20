// A Stream provides multiple values/events over time.
//
// Future  → One result
// Stream  → Multiple results
//
// =====================================================


// =====================================================
// 1. BASIC STREAM
// =====================================================
//
// async* creates an asynchronous Stream.
// yield sends values into the Stream.
// =====================================================

Stream<int> getNumbers() async* {

  yield 1;

  yield 2;

  yield 3;

  yield 4;

  yield 5;
}


// =====================================================
// 2. STREAM OF STRINGS
// =====================================================

Stream<String> getStudents() async* {

  yield "A Patel";

  yield "Rahul";

  yield "Jay";
}


// =====================================================
// 3. STREAM WITH DELAY
// =====================================================
//
// Each value is produced after a delay.
// =====================================================

Stream<int> getNumbersWithDelay() async* {

  await Future.delayed(
    Duration(seconds: 1),
  );

  yield 10;


  await Future.delayed(
    Duration(seconds: 1),
  );

  yield 20;


  await Future.delayed(
    Duration(seconds: 1),
  );

  yield 30;
}


// =====================================================
// 4. USING await for
// =====================================================
//
// await for waits for each Stream event.
// =====================================================

Future<void> useAwaitFor() async {

  print("Starting await for...");


  await for (int number in getNumbers()) {

    print("Received: $number");
  }


  print("Stream completed.");
}


// =====================================================
// 5. USING listen()
// =====================================================
//
// listen() listens to every event produced by the
// Stream.
// =====================================================

void useListen() {

  getNumbers().listen((number) {

    print("Listen received: $number");
  });
}


// =====================================================
// 6. STREAM WITH STRING VALUES
// =====================================================

Future<void> displayStudents() async {

  await for (String student in getStudents()) {

    print("Student: $student");
  }
}


// =====================================================
// 7. STREAM WITH DELAY
// =====================================================

Future<void> displayDelayedNumbers() async {

  print("Starting delayed Stream...");


  await for (int number in getNumbersWithDelay()) {

    print("Number received: $number");
  }


  print("Delayed Stream completed.");
}


// =====================================================
// 8. PRACTICAL TASK
// =====================================================
//
// Imagine a Flutter application receiving student
// attendance updates.
//
// The Stream sends attendance percentages one by one.
// =====================================================

Stream<int> attendanceStream() async* {

  yield 80;

  await Future.delayed(
    Duration(seconds: 1),
  );


  yield 85;

  await Future.delayed(
    Duration(seconds: 1),
  );


  yield 90;

  await Future.delayed(
    Duration(seconds: 1),
  );


  yield 95;
}


// =====================================================
// Display Attendance
// =====================================================

Future<void> displayAttendance() async {

  await for (int attendance in attendanceStream()) {

    print(
      "Current Attendance: $attendance%",
    );
  }
}


// =====================================================
// MAIN FUNCTION
// =====================================================

Future<void> main() async {

  // ===================================================
  // Example 1 - Basic Stream
  // ===================================================

  print("===== BASIC STREAM =====");


  await for (int number in getNumbers()) {

    print("Number: $number");
  }


  print("");


  // ===================================================
  // Example 2 - Stream of Students
  // ===================================================

  print("===== STUDENT STREAM =====");


  await for (String student in getStudents()) {

    print("Student: $student");
  }


  print("");


  // ===================================================
  // Example 3 - listen()
  // ===================================================

  print("===== LISTEN =====");


  useListen();


  // Give the Stream time to complete before the program
  // finishes in this simple console example.

  await Future.delayed(
    Duration(milliseconds: 100),
  );


  print("");


  // ===================================================
  // Example 4 - Stream with Delay
  // ===================================================

  print("===== DELAYED STREAM =====");


  await displayDelayedNumbers();


  print("");


  // ===================================================
  // Example 5 - Attendance Stream
  // ===================================================

  print("===== ATTENDANCE STREAM =====");


  await displayAttendance();


  print("");


  print("All Stream examples completed.");
}


// =====================================================
// FUTURE vs STREAM
// =====================================================
//
// Future:
//
// Future<String> getName() async {
//
//   return "A Patel";
// }
//
// Future gives ONE result.
//
//
// Stream:
//
// Stream<String> getNames() async* {
//
//   yield "A Patel";
//   yield "Rahul";
//   yield "Jay";
// }
//
// Stream can give MULTIPLE results.
//
// =====================================================


// =====================================================
// IMPORTANT STREAM KEYWORDS
// =====================================================
//
// Stream
// → Represents multiple asynchronous events.
//
// async*
// → Creates an asynchronous Stream.
//
// yield
// → Sends a value/event into the Stream.
//
// listen()
// → Listens for Stream events.
//
// await for
// → Receives Stream events one by one.
//
// =====================================================


// =====================================================
// STREAM FLOW
// =====================================================
//
// Stream
//    ↓
// yield 1
//    ↓
// yield 2
//    ↓
// yield 3
//    ↓
// yield 4
//    ↓
// Stream completed
//
// =====================================================