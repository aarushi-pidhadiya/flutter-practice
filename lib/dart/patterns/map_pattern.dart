// =====================================================
// Map Pattern
// =====================================================

void main() {

  // Student map.
  var student = {
    "name": "A Patel",
    "age": 20,
  };

  // Extract values from map.
  var {
  "name": name,
  "age": age,
  } = student;

  print("Name: $name");
  print("Age: $age");
}