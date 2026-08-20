// =====================================================
// STRING INTERPOLATION
// =====================================================

// Variable

String name = "A Patel";

int age = 20;


// =====================================================
// 1. Using $
// =====================================================

void main() {

  print("My name is $name");

  print("My age is $age");


  // ===================================================
  // 2. Using ${}
  // ===================================================

  int a = 10;

  int b = 20;


  print("Sum = ${a + b}");


  // ===================================================
  // 3. Multiple variables
  // ===================================================

  String course = "Flutter";

  String level = "Beginner";


  print(
    "My name is $name and I am learning $course.",
  );


  print(
    "Course: $course | Level: $level",
  );


  // ===================================================
  // 4. Object properties
  // ===================================================

  Student student = Student(
    "Rahul",
    85,
  );


  print(
    "Student: ${student.name}",
  );


  print(
    "Marks: ${student.marks}",
  );


  // ===================================================
  // 5. Expressions
  // ===================================================

  int x = 5;

  int y = 10;


  print(
    "Total = ${x + y}",
  );


  print(
    "Multiplication = ${x * y}",
  );
}


// =====================================================
// Student Class
// =====================================================

class Student {

  String name;

  int marks;


  Student(
      this.name,
      this.marks,
      );
}