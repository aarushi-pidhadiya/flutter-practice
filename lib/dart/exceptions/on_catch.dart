// =====================================================
// on + catch
// =====================================================

void main() {

  try {

    int result = 10 ~/ 0;

    print(result);

  } on IntegerDivisionByZeroException catch (error) {

    print("Cannot divide by zero.");

    print("Error: $error");
  }
}