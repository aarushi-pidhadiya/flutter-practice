// =====================================================
// Extension on String
// =====================================================

// Add our own methods to String.
extension StringHelper on String {

  // Method 1.
  void sayHello() {

    print("Hello $this");
  }


  // Method 2.
  int countCharacters() {

    return length;
  }
}


// =====================================================
// Extension on int
// =====================================================

extension NumberHelper on int {

  // Check whether number is even.
  bool isEvenNumber() {

    return this % 2 == 0;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // String Extension
  // ===================================================

  String name = "A Patel";

  // Our custom method.
  name.sayHello();


  // Our custom method returning value.
  print("Characters: ${name.countCharacters()}");


  // ===================================================
  // int Extension
  // ===================================================

  int number = 20;

  print("Is even: ${number.isEvenNumber()}");
}