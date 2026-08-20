// We will practice:
//
// 1. map()
// 2. where()
// 3. take()
// 4. skip()
// 5. distinct()
// 6. Combining transformations
//
// =====================================================


// =====================================================
// Student Marks Stream
// =====================================================

Stream<int> marksStream() async* {

  yield 45;

  yield 60;

  yield 60;

  yield 75;

  yield 80;

  yield 80;

  yield 90;

  yield 95;

  yield 100;
}


// =====================================================
// 1. map()
// =====================================================
//
// Add 5 bonus marks to every student.
// =====================================================

Future<void> mapTask() async {

  print("===== MAP =====");


  Stream<int> bonusMarks = marksStream().map(
        (marks) => marks + 5,
  );


  await for (int marks in bonusMarks) {

    print("Marks with bonus: $marks");
  }
}


// =====================================================
// 2. where()
// =====================================================
//
// Get only passing marks.
// Passing marks = 50 or more.
// =====================================================

Future<void> whereTask() async {

  print("===== WHERE =====");


  Stream<int> passingMarks = marksStream().where(
        (marks) => marks >= 50,
  );


  await for (int marks in passingMarks) {

    print("Passing marks: $marks");
  }
}


// =====================================================
// 3. take()
// =====================================================
//
// Take only the first 4 results.
// =====================================================

Future<void> takeTask() async {

  print("===== TAKE =====");


  Stream<int> firstFour = marksStream().take(4);


  await for (int marks in firstFour) {

    print("Marks: $marks");
  }
}


// =====================================================
// 4. skip()
// =====================================================
//
// Skip the first 3 results.
// =====================================================

Future<void> skipTask() async {

  print("===== SKIP =====");


  Stream<int> remaining = marksStream().skip(3);


  await for (int marks in remaining) {

    print("Marks: $marks");
  }
}


// =====================================================
// 5. distinct()
// =====================================================
//
// Remove consecutive duplicate marks.
// =====================================================

Future<void> distinctTask() async {

  print("===== DISTINCT =====");


  Stream<int> uniqueMarks = marksStream().distinct();


  await for (int marks in uniqueMarks) {

    print("Unique marks: $marks");
  }
}


// =====================================================
// 6. COMBINING TRANSFORMATIONS
// =====================================================
//
// Steps:
//
// 1. Remove duplicates
// 2. Get marks >= 70
// 3. Add 5 bonus marks
//
// =====================================================

Future<void> combinedTask() async {

  print("===== COMBINED =====");


  Stream<int> result = marksStream()

      .distinct()

      .where(
        (marks) => marks >= 70,
  )

      .map(
        (marks) => marks + 5,
  );


  await for (int marks in result) {

    print("Final marks: $marks");
  }
}


// =====================================================
// MAIN
// =====================================================

Future<void> main() async {

  await mapTask();

  print("");


  await whereTask();

  print("");


  await takeTask();

  print("");


  await skipTask();

  print("");


  await distinctTask();

  print("");


  await combinedTask();

  print("");


  print("All Stream transformations completed.");
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// map()
// → Changes every value.
//
// Example:
// 1 → 2
// 2 → 4
// 3 → 6
//
// -----------------------------------------------------
//
// where()
// → Filters values.
//
// Example:
// 1 ❌
// 2 ✅
// 3 ❌
// 4 ✅
//
// -----------------------------------------------------
//
// take()
// → Takes the first N events.
//
// take(3)
// → First 3 events.
//
// -----------------------------------------------------
//
// skip()
// → Skips the first N events.
//
// skip(2)
// → Skip first 2 events.
//
// -----------------------------------------------------
//
// distinct()
// → Removes consecutive duplicate values.
//
// 1, 1, 2, 2, 3
// ↓
// 1, 2, 3
//
// =====================================================