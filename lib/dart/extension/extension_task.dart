extension StringTaskExtension on String {

  // Convert String to uppercase.
  String makeUpperCase() {
    return toUpperCase();
  }

  // Convert String to lowercase.
  String makeLowerCase() {
    return toLowerCase();
  }

  // Check whether String is empty.
  bool get isEmptyText {
    return isEmpty;
  }

  // Get String length.
  int get textLength {
    return length;
  }
}


// =====================================================
// 2. Extension on int
// =====================================================

extension IntTaskExtension on int {

  // Check whether number is even.
  bool get isEvenNumber {
    return this % 2 == 0;
  }

  // Check whether number is odd.
  bool get isOddNumber {
    return this % 2 != 0;
  }

  // Check whether number is positive.
  bool get isPositiveNumber {
    return this > 0;
  }

  // Check whether number is negative.
  bool get isNegativeNumber {
    return this < 0;
  }

  // Return square of number.
  int get square {
    return this * this;
  }
}


// =====================================================
// 3. Extension on List<int>
// =====================================================

extension IntListTaskExtension on List<int> {

  // Calculate total.
  int get total {

    int sum = 0;

    for (int number in this) {
      sum += number;
    }

    return sum;
  }


  // Calculate average.
  double get average {

    if (isEmpty) {
      return 0;
    }

    return total / length;
  }


  // Find largest number.
  int get largest {

    if (isEmpty) {
      return 0;
    }

    int largestNumber = this[0];

    for (int number in this) {

      if (number > largestNumber) {
        largestNumber = number;
      }
    }

    return largestNumber;
  }


  // Find smallest number.
  int get smallest {

    if (isEmpty) {
      return 0;
    }

    int smallestNumber = this[0];

    for (int number in this) {

      if (number < smallestNumber) {
        smallestNumber = number;
      }
    }

    return smallestNumber;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // String Extension Task
  // ===================================================

  String name = "flutter";


  print("String: $name");

  print("Uppercase: ${name.makeUpperCase()}");

  print("Lowercase: ${name.makeLowerCase()}");

  print("Length: ${name.textLength}");

  print("Is Empty: ${name.isEmptyText}");


  print("");


  // ===================================================
  // int Extension Task
  // ===================================================

  int number = 10;


  print("Number: $number");

  print("Even: ${number.isEvenNumber}");

  print("Odd: ${number.isOddNumber}");

  print("Positive: ${number.isPositiveNumber}");

  print("Negative: ${number.isNegativeNumber}");

  print("Square: ${number.square}");


  print("");


  // ===================================================
  // List Extension Task
  // ===================================================

  List<int> numbers = [
    10,
    20,
    30,
    40,
    50,
  ];


  print("Numbers: $numbers");

  print("Total: ${numbers.total}");

  print("Average: ${numbers.average}");

  print("Largest: ${numbers.largest}");

  print("Smallest: ${numbers.smallest}");
}


// =====================================================
// IMPORTANT EXTENSION RULES
// =====================================================
//
// 1. Use the 'extension' keyword.
//
// 2. Use 'on' to specify the type.
//
// Example:
//
// extension StringTaskExtension on String
//
// 3. Extensions can add methods.
//
// 4. Extensions can add getters.
//
// 5. Extensions do NOT modify the original class.
//
// 6. Extensions are accessed using dot notation.
//
// Example:
//
// name.makeUpperCase()
//
// number.square
//
// numbers.total
//
// 7. 'this' refers to the current value.
//
// Example:
//
// this * this
//
// 8. Extensions can be created for:
//    - String
//    - int
//    - double
//    - List
//    - Map
//    - Your own classes
//
// =====================================================