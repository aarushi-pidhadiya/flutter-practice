// =====================================================
// 1. Extension on String
// =====================================================

extension StringExtension on String {

  // Extension Method
  String makeUpperCase() {

    return toUpperCase();
  }


  // Extension Method
  String makeLowerCase() {

    return toLowerCase();
  }


  // Extension Getter
  int get wordLength {

    return length;
  }
}


// =====================================================
// 2. Extension on int
// =====================================================

extension IntExtension on int {

  // Extension Method
  bool isEvenNumber() {

    return this % 2 == 0;
  }


  // Extension Method
  bool isPositive() {

    return this > 0;
  }


  // Extension Getter
  int get doubleValue {

    return this * 2;
  }
}


// =====================================================
// 3. Extension on List<int>
// =====================================================

extension ListExtension on List<int> {

  // Extension Method
  int get total {

    int sum = 0;

    for (int number in this) {

      sum += number;
    }

    return sum;
  }


  // Extension Getter
  double get average {

    if (isEmpty) {
      return 0;
    }

    return total / length;
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // String Extension
  // ===================================================

  String name = "flutter";


  print(name.makeUpperCase());

  print(name.makeLowerCase());

  print("Length: ${name.wordLength}");


  print("");


  // ===================================================
  // int Extension
  // ===================================================

  int number = 10;


  print("Is Even: ${number.isEvenNumber()}");

  print("Is Positive: ${number.isPositive()}");

  print("Double: ${number.doubleValue}");


  print("");


  // ===================================================
  // List Extension
  // ===================================================

  List<int> numbers = [
    10,
    20,
    30,
  ];


  print("Total: ${numbers.total}");

  print("Average: ${numbers.average}");
}


// =====================================================
// EXTENSION RULES
// =====================================================
//
// 1. Extensions add functionality to an existing type.
//
// 2. You don't modify the original class.
//
// 3. Use the 'extension' keyword.
//
// 4. 'on' specifies the type being extended.
//
// 5. Extensions can contain methods.
//
// 6. Extensions can contain getters.
//
// 7. Extensions can contain setters.
//
// 8. Extensions can be used with built-in types.
//
// 9. Extensions can be used with your own classes.
//
// 10. Extensions are accessed using dot notation.
//
// Example:
//
// name.makeUpperCase()
// number.isEvenNumber()
// numbers.total
//
// =====================================================