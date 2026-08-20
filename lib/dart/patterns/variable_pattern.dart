// =====================================================
// Variable Pattern
// =====================================================

void main() {

  // A record containing name and age.
  var student = (
  "A Patel",
  20,
  );

  // Extract values using a pattern.
  var (name, age) = student;

  print("Name: $name");
  print("Age: $age");
}