// =====================================================
// Calculator Class
// =====================================================

class Calculator {

  // ===================================================
  // Task:
  //
  // Create a method called multiply().
  //
  // It should work with:
  //
  // 2 numbers
  // 3 numbers
  // 4 numbers
  //
  // Dart doesn't support traditional method
  // overloading, so we use optional parameters.
// ===================================================

  int multiply(
      int a,
      int b, [
        int c = 1,
        int d = 1,
      ]) {

    return a * b * c * d;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // Create Calculator object.
  Calculator calculator = Calculator();


  // ===================================================
  // Multiply 2 numbers
  // ===================================================

  int result1 = calculator.multiply(2, 3);

  print("2 numbers: $result1");


  // ===================================================
  // Multiply 3 numbers
  // ===================================================

  int result2 = calculator.multiply(2, 3, 4);

  print("3 numbers: $result2");


  // ===================================================
  // Multiply 4 numbers
  // ===================================================

  int result3 = calculator.multiply(2, 3, 4, 5);

  print("4 numbers: $result3");
}