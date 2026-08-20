// =====================================================
// Exception Handling
// File: try_catch.dart
// =====================================================

void main() {

  try {

    // Code that might cause an error.

    int result = 10 ~/ 0;

    print(result);

  } catch (error) {

    // Runs when an exception occurs.

    print("An error occurred.");

    print("Error: $error");
  }


  // Program continues.

  print("Program continues...");
}