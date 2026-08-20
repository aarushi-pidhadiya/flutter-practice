// =====================================================
// MULTIPLE FUTURES - PRACTICAL TASK
// =====================================================
//
// Scenario:
//
// Imagine a Flutter dashboard needs three pieces of
// information:
//
// 1. Student count
// 2. Course count
// 3. Attendance percentage
//
// We will load all three using Future.wait().
//
// =====================================================


// =====================================================
// Student Count
// =====================================================

Future<int> getStudentCount() async {

  await Future.delayed(
    Duration(seconds: 2),
  );

  return 250;
}


// =====================================================
// Course Count
// =====================================================

Future<int> getCourseCount() async {

  await Future.delayed(
    Duration(seconds: 2),
  );

  return 12;
}


// =====================================================
// Attendance
// =====================================================

Future<double> getAttendance() async {

  await Future.delayed(
    Duration(seconds: 2),
  );

  return 95.5;
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  print("Loading dashboard data...");


  try {

    // =================================================
    // Run all Futures together.
    // =================================================

    var results = await Future.wait([

      getStudentCount(),

      getCourseCount(),

      getAttendance(),
    ]);


    // =================================================
    // Extract Results
    // =================================================

    int students = results[0] as int;

    int courses = results[1] as int;

    double attendance = results[2] as double;


    // =================================================
    // Display Dashboard
    // =================================================

    print("");

    print("===== DASHBOARD =====");

    print("Students: $students");

    print("Courses: $courses");

    print("Attendance: $attendance%");

    print("");

    print("Dashboard loaded successfully.");

  } catch (error) {

    // =================================================
    // Handle Error
    // =================================================

    print("Failed to load dashboard.");

    print("Error: $error");
  }
}


// =====================================================
// IMPORTANT RULES
// =====================================================
//
// Future.wait()
//
// → Waits for multiple Futures.
//
// → Useful when operations are independent.
//
// → Results are returned in the same order as the
//   Futures provided.
//
// Example:
//
// Future.wait([
//   getName(),     // results[0]
//   getAge(),      // results[1]
//   getCourse(),   // results[2]
// ]);
//
// =====================================================
//
// Sequential:
//
// String name = await getName();
// int age = await getAge();
// String course = await getCourse();
//
// Each operation is awaited separately.
//
// =====================================================
//
// Future.wait():
//
// var results = await Future.wait([
//   getName(),
//   getAge(),
//   getCourse(),
// ]);
//
// Independent operations can progress concurrently.
//
// =====================================================