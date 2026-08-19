void main() {

  // Pass values using parameter names.
  student(
    name: "A Patel",
    age: 20,
    course: "Flutter",
  );

  // You can change the order.
  student(
    course: "Dart",
    name: "Rahul",
    age: 21,
  );
}


// =====================================================
// Named Parameters
// =====================================================

// Parameters inside {} are named parameters.
void student({
  required String name,
  required int age,
  required String course,
}) {

  print("Name: $name");
  print("Age: $age");
  print("Course: $course");
}