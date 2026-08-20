// =====================================================
// STREAM ERROR - PRACTICAL TASK
// =====================================================
//
// Student Management System
//
// Simulate loading students from a database.
//
// Sometimes the database can produce an error.
//
// =====================================================


Stream<String> loadStudents() async* {

  yield "A Patel";

  yield "Rahul";

  yield "Jay";


  // Simulate database error.

  throw Exception(
    "Database connection failed",
  );


  // This will not execute.

  // yield "Ravi";
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Loading students...");


  try {

    await for (String student in loadStudents()) {

      print(
        "Student: $student",
      );
    }

  } catch (error) {

    print("");

    print("Unable to load students.");

    print("Error: $error");
  }


  print("");

  print("Program continues...");
}