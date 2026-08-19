// =====================================================
// Class
// =====================================================

class Student {

  // Properties.
  String name;
  int age;
  String course;


  // ===================================================
  // Constructor
  // ===================================================

  // Constructor name is the same as the class name.
  Student(this.name, this.age, this.course);
  //When you write:
  // Student("Ap", 20, "Flutter");

  // Dart automatically assigns:
  // name   → Rahul
  // age    → 20
  // course → Flutter
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Object 1
  // ===================================================

  // Values are passed directly to the constructor.
  Student student1 = Student(
    "Rahul",
    20,
    "Flutter",
  );


  // ===================================================
  // Object 2
  // ===================================================

  Student student2 = Student(
    "Priya",
    21,
    "Dart",
  );


  // ===================================================
  // Print Student 1
  // ===================================================

  print("Student 1");
  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Course: ${student1.course}");


  // ===================================================
  // Print Student 2
  // ===================================================

  print("\nStudent 2");
  print("Name: ${student2.name}");
  print("Age: ${student2.age}");
  print("Course: ${student2.course}");
}