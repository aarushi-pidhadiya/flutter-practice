// =====================================================
// finally
// =====================================================

void main() {

  try {

    print("Starting operation...");

    int result = 10 ~/ 2;

    print("Result: $result");

  } catch (error) {

    print("Error: $error");

  } finally {

    print("Operation finished.");
  }
}