// =====================================================
// Custom Exception
// =====================================================


// Create custom exception class.

class InvalidAgeException implements Exception {

  String message;

  InvalidAgeException(this.message);


  @override
  String toString() {

    return message;
  }
}


// =====================================================
// Function
// =====================================================

void checkAge(int age) {

  if (age < 18) {

    throw InvalidAgeException(
      "Age must be 18 or above.",
    );
  }

  print("Age is valid.");
}


// =====================================================
// Main
// =====================================================

void main() {

  try {

    checkAge(15);

  } catch (error) {

    print("Error: $error");
  }
}