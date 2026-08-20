// =====================================================
// 1. FormatException
// =====================================================
//
// Happens when a value cannot be converted to the
// expected format.
//
// Example:
// int.parse("Hello")
// =====================================================

void formatExceptionExample() {

  try {

    int number = int.parse("Hello");

    print(number);

  } on FormatException catch (error) {

    print("FormatException:");
    print(error);
  }
}


// =====================================================
// 2. IntegerDivisionByZeroException
// =====================================================
//
// Happens when integer division uses zero.
//
// ~/ means integer division.
// =====================================================

void integerDivisionByZeroExample() {

  try {

    int result = 10 ~/ 0;

    print(result);

  } on IntegerDivisionByZeroException catch (error) {

    print("IntegerDivisionByZeroException:");
    print(error);
  }
}


// =====================================================
// 3. StateError
// =====================================================
//
// Happens when an operation is invalid for the current
// state of an object.
//
// Example:
// Getting first item from an empty list.
// =====================================================

void stateErrorExample() {

  try {

    List<String> names = [];

    print(names.first);

  } on StateError catch (error) {

    print("StateError:");
    print(error);
  }
}


// =====================================================
// 4. ArgumentError
// =====================================================
//
// Happens when an invalid argument is passed to a
// function or constructor.
// =====================================================

void argumentErrorExample() {

  try {

    checkAge(-10);

  } on ArgumentError catch (error) {

    print("ArgumentError:");
    print(error);
  }
}


void checkAge(int age) {

  if (age < 0) {

    throw ArgumentError(
      "Age cannot be negative.",
    );
  }

  print("Age: $age");
}


// =====================================================
// 5. RangeError
// =====================================================
//
// Happens when a value is outside an allowed range.
// =====================================================

void rangeErrorExample() {

  try {

    List<int> numbers = [
      10,
      20,
      30,
    ];


    print(numbers[100]);

  } on RangeError catch (error) {

    print("RangeError:");
    print(error);
  }
}


// =====================================================
// 6. IndexError
// =====================================================
//
// Happens when an invalid index is used.
//
// Example:
// List has 2 items.
// Valid indexes are 0 and 1.
// =====================================================

void indexErrorExample() {

  try {

    List<String> fruits = [
      "Apple",
      "Banana",
    ];


    print(fruits[10]);

  } on IndexError catch (error) {

    print("IndexError:");
    print(error);
  }
}


// =====================================================
// 7. TypeError
// =====================================================
//
// Happens when an operation is performed with an
// incompatible type.
// =====================================================

void typeErrorExample() {

  try {

    dynamic value = "100";


    int number = value as int;


    print(number);

  } on TypeError catch (error) {

    print("TypeError:");
    print(error);
  }
}


// =====================================================
// 8. ConcurrentModificationError
// =====================================================
//
// Happens when a collection is modified while it is
// being iterated.
// =====================================================

void concurrentModificationExample() {

  try {

    List<String> names = [
      "A",
      "B",
      "C",
    ];


    for (String name in names) {

      print(name);

      names.remove(name);
    }

  } on ConcurrentModificationError catch (error) {

    print("ConcurrentModificationError:");
    print(error);
  }
}


// =====================================================
// 9. Custom Exception
// =====================================================
//
// This is NOT predefined.
// It is included here for comparison.
//
// You can create your own exception class.
// =====================================================

class InvalidMarksException implements Exception {

  String message;


  InvalidMarksException(this.message);


  @override
  String toString() {

    return message;
  }
}


void customExceptionExample() {

  try {

    int marks = 150;


    if (marks > 100) {

      throw InvalidMarksException(
        "Marks cannot be greater than 100.",
      );
    }

  } on InvalidMarksException catch (error) {

    print("Custom Exception:");
    print(error);
  }
}


// =====================================================
// MAIN FUNCTION
// =====================================================

void main() {

  print("===== FormatException =====");

  formatExceptionExample();


  print("");


  print("===== IntegerDivisionByZeroException =====");

  integerDivisionByZeroExample();


  print("");


  print("===== StateError =====");

  stateErrorExample();


  print("");


  print("===== ArgumentError =====");

  argumentErrorExample();


  print("");


  print("===== RangeError =====");

  rangeErrorExample();


  print("");


  print("===== IndexError =====");

  indexErrorExample();


  print("");


  print("===== TypeError =====");

  typeErrorExample();


  print("");


  print("===== ConcurrentModificationError =====");

  concurrentModificationExample();


  print("");


  print("===== Custom Exception =====");

  customExceptionExample();
}


// =====================================================
// QUICK REVISION
// =====================================================
//
// FormatException
// → Invalid format / parsing.
//
// IntegerDivisionByZeroException
// → Integer division by zero.
//
// StateError
// → Invalid operation for current state.
//
// ArgumentError
// → Invalid function argument.
//
// RangeError
// → Value outside an allowed range.
//
// IndexError
// → Invalid index.
//
// TypeError
// → Incompatible type operation.
//
// ConcurrentModificationError
// → Collection modified during iteration.
//
// Custom Exception
// → Exception created by you.
//
// =====================================================