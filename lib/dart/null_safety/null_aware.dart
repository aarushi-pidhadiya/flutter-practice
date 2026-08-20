// =====================================================
// Null-Aware Operator ?.
// =====================================================

void main() {

  String? name = "Flutter";


  // ?. safely accesses the value.

  print(name?.length);


  name = null;


  // No error.
  // Returns null.

  print(name?.length);
}