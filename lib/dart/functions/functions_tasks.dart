void main() {

  // ===================================================
  // TASK 1 — Greeting
  // ===================================================

  greet("A Patel");


  // ===================================================
  // TASK 2 — Addition
  // ===================================================

  int sum = add(10, 20);

  print("Sum: $sum");


  // ===================================================
  // TASK 3 — Multiplication
  // ===================================================

  int result = multiply(5, 6);

  print("Multiplication: $result");


  // ===================================================
  // TASK 4 — Even or Odd
  // ===================================================

  checkEvenOdd(15);


  // ===================================================
  // TASK 5 — Find Bigger Number
  // ===================================================

  int bigger = findBigger(25, 40);

  print("Bigger number: $bigger");


  // ===================================================
  // TASK 6 — Multiplication Table
  // ===================================================

  multiplicationTable(7);


  // ===================================================
  // TASK 7 — Student Result
  // ===================================================

  studentResult(85);


  // ===================================================
  // TASK 8 — Calculate Area
  // ===================================================

  double area = rectangleArea(10, 5);

  print("Rectangle Area: $area");


  // ===================================================
  // TASK 9 — Optional Parameter
  // ===================================================

  student("Rahul", 20);

  student("Priya", 21, "Flutter");


  // ===================================================
  // TASK 10 — Named Parameters
  // ===================================================

  studentInfo(
    name: "A Patel",
    age: 20,
    course: "Flutter",
  );


  // ===================================================
  // TASK 11 — Arrow Function
  // ===================================================

  int squareResult = square(5);

  print("Square: $squareResult");
}


// =====================================================
// TASK 1 — Greeting Function
// =====================================================

void greet(String name) {

  print("Hello $name");
}


// =====================================================
// TASK 2 — Addition Function
// =====================================================

int add(int a, int b) {

  return a + b;
}


// =====================================================
// TASK 3 — Multiplication Function
// =====================================================

int multiply(int a, int b) {

  return a * b;
}


// =====================================================
// TASK 4 — Even or Odd Function
// =====================================================

void checkEvenOdd(int number) {

  if (number % 2 == 0) {

    print("$number is Even");

  } else {

    print("$number is Odd");
  }
}


// =====================================================
// TASK 5 — Find Bigger Number
// =====================================================

int findBigger(int a, int b) {

  if (a > b) {

    return a;

  } else {

    return b;
  }
}


// =====================================================
// TASK 6 — Multiplication Table
// =====================================================

void multiplicationTable(int number) {

  for (int i = 1; i <= 10; i++) {

    print("$number x $i = ${number * i}");
  }
}


// =====================================================
// TASK 7 — Student Result
// =====================================================

void studentResult(int marks) {

  if (marks >= 40) {

    print("Student Passed");

  } else {

    print("Student Failed");
  }
}


// =====================================================
// TASK 8 — Rectangle Area
// =====================================================

double rectangleArea(double length, double width) {

  return length * width;
}


// =====================================================
// TASK 9 — Optional Parameter
// =====================================================

void student(
    String name,
    int age,
    [String course = "Not Selected"]
    ) {

  print("Name: $name");
  print("Age: $age");
  print("Course: $course");
}


// =====================================================
// TASK 10 — Named Parameters
// =====================================================

void studentInfo({
  required String name,
  required int age,
  required String course,
}) {

  print("Name: $name");
  print("Age: $age");
  print("Course: $course");
}


// =====================================================
// TASK 11 — Arrow Function
// =====================================================

int square(int number) => number * number;