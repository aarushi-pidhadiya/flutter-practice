// =====================================================
// Create a Class
// =====================================================

// Student is a class.
// A class is a blueprint for creating objects.

class Student {

  // ===================================================
  // Properties
  // ===================================================

  // These are variables inside the class.

  String name = "A Patel";

  int age = 20;

  String course = "Flutter";
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // Create an Object
  // ===================================================

  // Create an object from the Student class.
  Student student = Student();


  // ===================================================
  // Access Properties
  // ===================================================

  // Access the name.
  print(student.name);

  // Access the age.
  print(student.age);

  // Access the course.
  print(student.course);
}