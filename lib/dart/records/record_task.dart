// Records allow us to group multiple values together
// without creating a separate class.
//
// Records can contain different data types.
//
// Main types:
// 1. Positional Records
// 2. Named Records
// 3. Mixed Records
//
// =====================================================


// =====================================================
// 1. POSitional Record
// =====================================================
//
// Values are accessed using:
// $1, $2, $3, ...
//
// =====================================================

(String, int) student = (
"A Patel",
20,
);


// =====================================================
// 2. Positional Record with 3 Values
// =====================================================

(String, int, double) studentMarks = (
"A Patel",
20,
85.5,
);


// =====================================================
// 3. Named Record
// =====================================================
//
// Named values are accessed using their names.
//
// =====================================================

({
String name,
int age,
}) studentInfo = (
name: "A Patel",
age: 20,
);


// =====================================================
// 4. Named Record with Multiple Values
// =====================================================

({
String name,
int age,
String course,
double marks,
}) studentDetails = (
name: "A Patel",
age: 20,
course: "Flutter",
marks: 85.5,
);


// =====================================================
// 5. Mixed Record
// =====================================================
//
// A record can contain positional AND named values.
//
// =====================================================

(
String,
int,
{String course}
) mixedStudent = (
"A Patel",
20,
course: "Flutter",
);


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Example 1 - Positional Record
  // ===================================================

  print("===== Positional Record =====");

  print("Name: ${student.$1}");

  print("Age: ${student.$2}");


  print("");


  // ===================================================
  // Example 2 - Positional Record with 3 Values
  // ===================================================

  print("===== Positional Record - 3 Values =====");

  print("Name: ${studentMarks.$1}");

  print("Age: ${studentMarks.$2}");

  print("Marks: ${studentMarks.$3}");


  print("");


  // ===================================================
  // Example 3 - Named Record
  // ===================================================

  print("===== Named Record =====");

  print("Name: ${studentInfo.name}");

  print("Age: ${studentInfo.age}");


  print("");


  // ===================================================
  // Example 4 - Named Record with Multiple Values
  // ===================================================

  print("===== Named Record - Multiple Values =====");

  print("Name: ${studentDetails.name}");

  print("Age: ${studentDetails.age}");

  print("Course: ${studentDetails.course}");

  print("Marks: ${studentDetails.marks}");


  print("");


  // ===================================================
  // Example 5 - Mixed Record
  // ===================================================

  print("===== Mixed Record =====");

  print("Name: ${mixedStudent.$1}");

  print("Age: ${mixedStudent.$2}");

  print("Course: ${mixedStudent.course}");


  print("");


  // ===================================================
  // Example 6 - Record Values
  // ===================================================

  print("===== Record Values =====");

  // Positional values.
  print(student.$1);
  print(student.$2);

  // Named values.
  print(studentInfo.name);
  print(studentInfo.age);


  print("");


  // ===================================================
  // Example 7 - Record Type
  // ===================================================

  print("===== Record Type =====");

  print(student.runtimeType);

  print(studentInfo.runtimeType);


  print("");


  // ===================================================
  // Example 8 - Record Equality
  // ===================================================

  print("===== Record Equality =====");

  var record1 = (
  "A Patel",
  20,
  );

  var record2 = (
  "A Patel",
  20,
  );

  print(record1 == record2);


  print("");


  // ===================================================
  // Example 9 - Record in a Function
  // ===================================================

  var result = getStudent();

  print("===== Record from Function =====");

  print("Name: ${result.$1}");

  print("Age: ${result.$2}");


  print("");


  // ===================================================
  // Example 10 - Named Record from Function
  // ===================================================

  var details = getStudentDetails();

  print("===== Named Record from Function =====");

  print("Name: ${details.name}");

  print("Course: ${details.course}");

  print("Marks: ${details.marks}");
}


// =====================================================
// Function Returning Positional Record
// =====================================================

(String, int) getStudent() {

  return (
  "A Patel",
  20,
  );
}


// =====================================================
// Function Returning Named Record
// =====================================================

({
String name,
String course,
double marks,
}) getStudentDetails() {

  return (
  name: "A Patel",
  course: "Flutter",
  marks: 85.5,
  );
}


// =====================================================
// RECORD RULES
// =====================================================
//
// 1. Records group multiple values.
//
// 2. Records don't require creating a class.
//
// 3. Records can contain different data types.
//
// 4. Positional records use positions.
//
// Example:
//
// (String, int) student = ("A Patel", 20);
//
// Access:
//
// student.$1
// student.$2
//
// 5. Named records use names.
//
// Example:
//
// ({String name, int age}) student = (
//   name: "A Patel",
//   age: 20,
// );
//
// Access:
//
// student.name
// student.age
//
// 6. Positional records can contain multiple values.
//
// Example:
//
// (String, int, double)
//
// 7. Named records can contain multiple named values.
//
// 8. Records can contain both positional and named values.
//
// Example:
//
// (String, int, {String course})
//
// 9. Records can be returned from functions.
//
// 10. Records can be compared using ==.
//
// 11. Positional values start from $1.
//
// 12. Record values are strongly typed.
//
// =====================================================


// =====================================================
// QUICK REVISION
// =====================================================
//
// Positional:
//
// (String, int) data = ("A Patel", 20);
//
// data.$1
// data.$2
//
//
// Named:
//
// ({String name, int age}) data = (
//   name: "A Patel",
//   age: 20,
// );
//
// data.name
// data.age
//
//
// Mixed:
//
// (String, int, {String course}) data = (
//   "A Patel",
//   20,
//   course: "Flutter",
// );
//
// data.$1
// data.$2
// data.course
//
// =====================================================