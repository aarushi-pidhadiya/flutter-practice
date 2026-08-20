// =====================================================
// Wildcard Pattern
// =====================================================

void main() {

  var student = (
  "A Patel",
  20,
  "Flutter",
  );

  // _ means ignore this value.
  var (name, _, course) = student;

  print("Name: $name");
  print("Course: $course");
}