// =====================================================
// Record Pattern
// =====================================================

void main() {

  // Record.
  (String, int) student = (
  "A Patel",
  20,
  );

  // Destructure the record.
  var (name, age) = student;

  print("Name: $name");
  print("Age: $age");
}