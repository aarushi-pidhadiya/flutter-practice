// =====================================================
// Nested Pattern
// =====================================================

void main() {

  // A record containing another record.
  var student = (
  "A Patel",
  (20, "Flutter"),
  );


  // Nested pattern.
  var (
  name,
  (age, course),
  ) = student;


  print("Name: $name");
  print("Age: $age");
  print("Course: $course");
}