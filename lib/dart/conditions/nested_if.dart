void main() {

  // Store whether the person is a student.
  bool isStudent = true;

  // Store whether the person is learning Flutter.
  bool isLearningFlutter = true;


  // ===================================================
  // Outer If
  // ===================================================

  // First check if the person is a student.
  if (isStudent) {

    // This code runs if isStudent is true.
    print("You are a student");


    // =================================================
    // Inner If
    // =================================================

    // Now check another condition inside the first if.
    if (isLearningFlutter) {

      // This runs if both conditions are true.
      print("You are learning Flutter");

    }
  }
}