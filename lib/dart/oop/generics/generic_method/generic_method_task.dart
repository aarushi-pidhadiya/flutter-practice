// =====================================================
// Generic Method
// =====================================================

// T can be String, int, double, or any other type.
void printList<T>(List<T> items) {

  // Loop through every item.
  for (T item in items) {

    print(item);
  }
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // ===================================================
  // String List
  // ===================================================

  List<String> fruits = [
    "Apple",
    "Banana",
    "Mango",
  ];

  print("Fruits:");

  printList<String>(fruits);


  print("");


  // ===================================================
  // Integer List
  // ===================================================

  List<int> numbers = [
    10,
    20,
    30,
  ];

  print("Numbers:");

  printList<int>(numbers);


  print("");


  // ===================================================
  // Double List
  // ===================================================

  List<double> prices = [
    10.5,
    20.5,
    30.5,
  ];

  print("Prices:");

  printList<double>(prices);
}