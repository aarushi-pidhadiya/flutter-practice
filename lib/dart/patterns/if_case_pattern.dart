// =====================================================
// if-case Pattern
// =====================================================

void main() {

  var value = 100;


  // Check whether value is an int.
  if (value case int number) {

    print("Value is an integer");
    print("Number: $number");

  } else {

    print("Value is not an integer");
  }
}