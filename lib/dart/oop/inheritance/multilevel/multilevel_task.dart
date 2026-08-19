// =====================================================
// Level 1 — Parent Class
// =====================================================

class Person {

  // Parent method.
  void introduce() {

    print("I am a person");
  }
}


// =====================================================
// Level 2 — Child Class
// =====================================================

class Student extends Person {

  // Student's own method.
  void study() {

    print("Student is studying");
  }
}


// =====================================================
// Level 3 — Grandchild Class
// =====================================================

class CollegeStudent extends Student {

  // CollegeStudent's own method.
  void attendLecture() {

    print("College student is attending lecture");
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create CollegeStudent object.
  CollegeStudent student = CollegeStudent();


  // Inherited from Person.
  student.introduce();


  // Inherited from Student.
  student.study();


  // Own method.
  student.attendLecture();
}