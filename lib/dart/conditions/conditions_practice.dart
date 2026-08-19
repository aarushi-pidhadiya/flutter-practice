void main() {

  // ===================================================
  // Student Information
  // ===================================================

  // Store student's name.
  String name = "A Patel";

  // Store student's age.
  int age = 20;

  // Store student's marks.
  int marks = 85;

  // Store whether the person is a student.
  bool isStudent = true;

  // Store day number.
  int day = 3;


  // ===================================================
  // 1. If Condition
  // ===================================================

  // Check if the person is a student.
  if (isStudent) {
    print("$name is a student");
  }


  // ===================================================
  // 2. If-Else Condition
  // ===================================================

  // Check whether the student is 18 or older.
  if (age >= 18) {
    print("You are an adult");
  } else {
    print("You are under 18");
  }


  // ===================================================
  // 3. Else-If Condition
  // ===================================================

  // Check the student's grade.
  if (marks >= 90) {

    print("Grade A");

  } else if (marks >= 75) {

    print("Grade B");

  } else if (marks >= 50) {

    print("Grade C");

  } else if (marks >= 40) {

    print("Grade D");

  } else {

    print("Fail");
  }


  // ===================================================
  // 4. Nested If
  // ===================================================

  // First check if the person is a student.
  if (isStudent) {

    print("Student account");

    // Check the marks inside the first condition.
    if (marks >= 75) {
      print("Good marks");
    }
  }


  // ===================================================
  // 5. Switch-Case
  // ===================================================

  // Check the day number.
  switch (day) {

    case 1:
      print("Monday");
      break;

    case 2:
      print("Tuesday");
      break;

    case 3:
      print("Wednesday");
      break;

    case 4:
      print("Thursday");
      break;

    case 5:
      print("Friday");
      break;

    default:
      print("Invalid day");
  }
}