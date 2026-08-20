// =====================================================
// Generic Method
// =====================================================

void display<T>(T value) {

  print("Value: $value");
  print("Type: ${T}");
}


// =====================================================
// Main Function
// =====================================================

void main() {

  // T becomes String.
  display<String>("Flutter");


  print("");


  // T becomes int.
  display<int>(100);


  print("");


  // T becomes double.
  display<double>(99.99);


  print("");


  // T becomes bool.
  display<bool>(true);
}