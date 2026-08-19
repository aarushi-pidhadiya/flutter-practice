// =====================================================
// 1. METHOD vs FUNCTION
// =====================================================

// A normal function is outside a class.

void sayHello() {

  print("Hello");
}


// A method is a function inside a class.

class Student {

  void sayHello() {

    print("Hello from method");
  }
}


// =====================================================
// 2. METHOD WITH RETURN VALUE
// =====================================================

class Calculator {

  // Method with parameters and return value.
  int add(int a, int b) {

    return a + b;
  }
}


// =====================================================
// 3. METHOD WITH IF-ELSE
// =====================================================

class Result {

  // Property.
  int marks;

  // Constructor.
  Result(this.marks);


  // Method containing if-else.
  void checkResult() {

    if (marks >= 40) {

      print("Pass");

    } else {

      print("Fail");
    }
  }
}


// =====================================================
// MAIN FUNCTION
// =====================================================

void main() {

  // ===================================================
  // Normal Function
  // ===================================================

  // Call function directly.
  sayHello();


  // ===================================================
  // Method
  // ===================================================

  // Create Student object.
  Student student = Student();

  // Call method using object.
  student.sayHello();


  // ===================================================
  // Method with Return Value
  // ===================================================

  // Create Calculator object.
  Calculator calculator = Calculator();

  // Call add() method.
  int result = calculator.add(10, 20);

  // Print returned value.
  print(result);


  // ===================================================
  // Method with If-Else
  // ===================================================

  // Create Result object with marks.
  Result studentResult = Result(75);

  // Call checkResult() method.
  studentResult.checkResult();
}