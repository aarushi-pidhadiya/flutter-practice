// =====================================================
// switch Pattern
// =====================================================

void main() {

  var value = 100;


  switch (value) {

  // Match integer.
    case int number:

      print("Integer: $number");

      break;


  // Match String.
    case String text:

      print("String: $text");

      break;


  // Anything else.
    default:

      print("Unknown type");
  }
}