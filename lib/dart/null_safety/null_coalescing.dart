// =====================================================
// Null-Coalescing Operator ??
// =====================================================

void main() {

  String? name;


  // If name is null,
  // "Unknown" will be used.

  print(name ?? "Unknown");


  name = "A Patel";


  // name is not null,
  // so "A Patel" is used.

  print(name ?? "Unknown");


  int? age;


  print(age ?? 0);
}