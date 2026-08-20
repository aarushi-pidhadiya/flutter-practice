// =====================================================
// Null Assertion Operator !
// =====================================================

void main() {

  String? name = "A Patel";


  // ! tells Dart:
  // "I know this value is not null."

  print(name!.length);


  // Be careful!
  //
  // If name is null:
  //
  // String? name = null;
  // print(name!.length);
  //
  // ❌ Runtime error
}