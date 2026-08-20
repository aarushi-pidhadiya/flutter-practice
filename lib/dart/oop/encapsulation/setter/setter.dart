class Student {

  // Private variable.
  int _marks = 0;


  // ===================================================
  // Setter
  // ===================================================

  set marks(int value) {

    // Check that marks are valid.
    if (value >= 0 && value <= 100) {

      _marks = value;

    } else {

      print("Invalid marks");
    }
  }


  // ===================================================
  // Getter
  // ===================================================

  int get marks {

    return _marks;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  Student student = Student();


  // Use setter to change marks.
  student.marks = 85;


  // Use getter to read marks.
  print("Marks: ${student.marks}");


  // Try invalid value.
  student.marks = 150;
}