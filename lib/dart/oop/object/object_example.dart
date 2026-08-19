// =====================================================
// Class
// =====================================================

// Student is the blueprint.
class Student {

  String name = "";
  int age = 0;
  String course = "";
}


// =====================================================
// Main
// =====================================================

void main() {

  // ===================================================
  // Object 1
  // ===================================================

  Student student1 = Student();

  student1.name = "Rahul";
  student1.age = 20;
  student1.course = "Flutter";


  // ===================================================
  // Object 2
  // ===================================================

  Student student2 = Student();

  student2.name = "Priya";
  student2.age = 21;
  student2.course = "Dart";


  // ===================================================
  // Print Object 1
  // ===================================================

  print("Student 1");
  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Course: ${student1.course}");


  // ===================================================
  // Print Object 2
  // ===================================================

  print("\nStudent 2");
  print("Name: ${student2.name}");
  print("Age: ${student2.age}");
  print("Course: ${student2.course}");
}