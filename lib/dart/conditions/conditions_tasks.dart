void main() {

  // ===================================================
  // TASK 1 — Check Age
  // ===================================================

  int age = 20;

  if (age >= 18) {
    print("You can vote");
  } else {
    print("You cannot vote");
  }


  // ===================================================
  // TASK 2 — Check Even or Odd
  // ===================================================

  int number = 15;

  if (number % 2 == 0) {
    print("Even number");
  } else {
    print("Odd number");
  }


  // ===================================================
  // TASK 3 — Pass or Fail
  // ===================================================

  int marks = 65;

  if (marks >= 40) {
    print("Pass");
  } else {
    print("Fail");
  }


  // ===================================================
  // TASK 4 — Find Grade
  // ===================================================

  int studentMarks = 85;

  if (studentMarks >= 90) {

    print("Grade A");

  } else if (studentMarks >= 75) {

    print("Grade B");

  } else if (studentMarks >= 50) {

    print("Grade C");

  } else if (studentMarks >= 40) {

    print("Grade D");

  } else {

    print("Fail");
  }


  // ===================================================
  // TASK 5 — Find Bigger Number
  // ===================================================

  int a = 25;
  int b = 40;

  if (a > b) {
    print("$a is bigger");
  } else {
    print("$b is bigger");
  }


  // ===================================================
  // TASK 6 — Login Check
  // ===================================================

  String username = "admin";
  String password = "1234";

  if (username == "admin" && password == "1234") {

    print("Login successful");

  } else {

    print("Wrong username or password");
  }


  // ===================================================
  // TASK 7 — Nested If
  // ===================================================

  bool isStudent = true;
  int studentAge = 20;

  if (isStudent) {

    print("You are a student");

    if (studentAge >= 18) {

      print("You are an adult student");
    }
  }


  // ===================================================
  // TASK 8 — Day Using Switch
  // ===================================================

  int day = 5;

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

    case 6:
      print("Saturday");
      break;

    case 7:
      print("Sunday");
      break;

    default:
      print("Invalid day");
  }
}